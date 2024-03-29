import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:kanban_board/domain/projects/entities/projects.dart';
import 'package:kanban_board/domain/projects/failure/failure.dart';
import 'package:kanban_board/domain/projects/param/projects_param.dart';
import 'package:kanban_board/infrastructure/core/firestore_helper.dart';
import 'package:kanban_board/infrastructure/local/secure_storage_repo.dart';

///__________ This repo contain only the 'project' data remote
///
abstract class ProjectsRepository {

  Stream<Either<ProjectsFailure, ProjectEntities>> streamDetailProjects(String id);

  Future<Either<ProjectsFailure, ProjectEntities>> detail(String id);

  Future<Either<ProjectsFailure, List<ProjectEntities>>> listProject(String userEmail);

  Future<Either<ProjectsFailure, List<CollaboratorEntities>>> listCollaborator(String projectsId);

  Future<Either<ProjectsFailure, String>> create(ProjecParam projectEntities);

  Future<Either<ProjectsFailure, Unit>> delete(String id);
}

@LazySingleton(as: ProjectsRepository)
class ProjectsRepositoryImplement implements ProjectsRepository {
  final FirebaseFirestore _firestore;

  ProjectsRepositoryImplement(this._firestore, this.secureStorageRepository);

  final SecureStorageRepository secureStorageRepository;

  @override
  Stream<Either<ProjectsFailure, ProjectEntities>> streamDetailProjects(String id) async* {
    final collection = _firestore.projectsCollection();

    yield* collection.doc(id).snapshots().map(
        (snapshot) => right(ProjectEntities.fromJson(snapshot.data() ?? {})),
      )..handleError(
      (error) {  },
    );
  }

  @override
  Future<Either<ProjectsFailure, ProjectEntities>> detail(String id) async {
    final collection = _firestore.projectsCollection();

    final res = await collection.doc(id).get();

    if (res.exists) {
      return right(ProjectEntities.fromJson(res.data()!));
    } else {
      return left(const ProjectsFailure.unexpected());
    }
  }

  @override
  Future<Either<ProjectsFailure, List<CollaboratorEntities>>> listCollaborator(String id) async {
    final collection = _firestore.projectsCollection();

    final res = await collection.doc(id).get();

    List listDynamic = res.data()?['collaborator'];

    List<CollaboratorEntities> list = listDynamic.map((e) => CollaboratorEntities(email: e['email'], photoUrl: e['photo_url'])).toList();

    if (res.exists) {
      return right(list);
    } else {
      return left(const ProjectsFailure.unexpected());
    }
  }

  @override
  Future<Either<ProjectsFailure, List<ProjectEntities>>> listProject(String email) async {
    final collection = _firestore.projectsCollection();

    final res = await collection.where('owner', isEqualTo: email).get();

    final listProjects = <ProjectEntities>[];

    res.docs
        .map(
          (e) => listProjects.add(
            ProjectEntities(
              id: e.id,
              name: e.data()['name'],
              description: e.data()['description'],
              owner: e.data()['owner'],
            ),
          ),
        )
        .toList();

    if (listProjects.isNotEmpty) {
      return right(listProjects);
    } else {
      return left(const ProjectsFailure.failToCreateProject());
    }
  }

  @override
  Future<Either<ProjectsFailure, String>> create(ProjecParam projectEntities) async {
    final projectDoc = _firestore.collection('projects');
    final res = json.decode(await rootBundle.loadString('assets/file/project_dummy.json'));
    final paramCreate = {
      'owner': projectEntities.projectOwner,
      'name': projectEntities.projectName,
      'description': projectEntities.projectDescription,
      'collaborator': [
        CollaboratorEntities(
          email: await secureStorageRepository.getUserEmail(),
          photoUrl: await secureStorageRepository.getUserDisplayName(),
        ).toJson(),
        CollaboratorEntities(
          email: 'example@mail.com',
          photoUrl: 'https://dummyimage.com/300',
        ).toJson()
      ],
      'to_do' : res['to_do'],
      'in_progress' : res['in_progress'],
      'done' : res['done']
    };

    try {
      final doc = await projectDoc.add(paramCreate);
      return right(doc.id);
    } on FirebaseException {
      return left(const ProjectsFailure.failToCreateProject());
    }
  }
  
  @override
  Future<Either<ProjectsFailure, Unit>> delete(String id) async {
    final collection = _firestore.collection('projects');

    await collection.doc(id).delete();

    return right(unit);
  }
}
