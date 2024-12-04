import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';

class AppwriteService {
  late Client client;
  late Databases databases;

  static const endpoint = 'https://cloud.appwrite.io/v1'; // Your Appwrite endpoint (use https://cloud.appwrite.io for cloud)
  static const projectId = '674aaa34003e3580845a'; // Replace with your Project ID
  static const databaseId = '674aac2c001f37fda061'; // Replace with your Database ID

  // Collection IDs
  static const collectionIdText = '674aac56001f121967b1';  // Replace with your actual collection ID for 'text'
  static const collectionIdList = '674aac64001beaae8ecc';  // Replace with your actual collection ID for 'list'
  static const collectionIdTask = '674aac6e0007da780beb';  // Replace with your actual collection ID for 'task'

  AppwriteService() {
    client = Client();
    client.setEndpoint(endpoint);
    client.setProject(projectId);
    databases = Databases(client);
  }

  // General method to get documents from a collection
  Future<List<Document>> getDocuments(String collectionId) async {
    try {
      final result = await databases.listDocuments(
        collectionId: collectionId,
        databaseId: databaseId,
      );
      return result.documents;
    } catch (e) {
      print('Error loading documents: $e');
      rethrow;
    }
  }

  // General method to add a document to a collection
  Future<Document> addDocument(String collectionId, Map<String, dynamic> data) async {
    try {
      final documentId = ID.unique();
      final result = await databases.createDocument(
        collectionId: collectionId,
        databaseId: databaseId,
        data: data,
        documentId: documentId,
      );
      return result;
    } catch (e) {
      print('Error creating document: $e');
      rethrow;
    }
  }

  // General method to delete a document from a collection
  Future<void> deleteDocument(String collectionId, String documentId) async {
    try {
      await databases.deleteDocument(
        collectionId: collectionId,
        documentId: documentId,
        databaseId: databaseId,
      );
    } catch (e) {
      print('Error deleting document: $e');
      rethrow;
    }
  }

  // 1. Specific function to get documents from the 'text' collection
  Future<List<Document>> getTextDocuments() async {
    return await getDocuments(collectionIdText);
  }

  // 2. Specific function to add a document to the 'text' collection
  Future<Document> addTextDocument(String title, String content) async {
    return await addDocument(
      collectionIdText,
      {
        'title': title,
        'content': content,
      },
    );
  }

  
  Future<List<Document>> getListDocuments() async {
    return await getDocuments(collectionIdList);
  }

  // 4. Specific function to add a document to the 'list' collection
  Future<Document> addListDocument(String title, List<String> items) async {
    return await addDocument(
      collectionIdList,
      {
        'title': title,
        'items': items,  // Array of items
      },
    );
  }

  // 5. Specific function to get documents from the 'task' collection
  Future<List<Document>> getTaskDocuments() async {
    return await getDocuments(collectionIdTask);
  }

  // 6. Specific function to add a document to the 'task' collection
  Future<Document> addTaskDocument(String title, String description, String date, String time) async {
    return await addDocument(
      collectionIdTask,
      {
        'title': title,
        'description': description,
        'date': date,
        'time': time,
      },
    );
  }

  getNotes() {}

  addNote(String title, String content) {}

  deleteNote(String taskId) {}
}
