import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_book_controller.dart';

class AddBookView extends GetView<AddBookController> {
  const AddBookView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AddBookView'),
        centerTitle: true,
      ),
      body: Center(
          child: Form(
            key: controller.formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: controller.judulController,
                  decoration: InputDecoration(hintText: "Judul Buku"),
                  validator: (value) {
                    if (value!.length < 2) {
                      return "judul tidak boleh kosong";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: controller.penulisController,
                  decoration: InputDecoration(hintText: "Penulis"),
                  validator: (value) {
                    if (value!.length < 2) {
                      return "penulis tidak boleh kosong";
                    }
                    return null;
                  },
                ),TextFormField(
                  controller: controller.penerbitController,
                  decoration: InputDecoration(hintText: "Penerbit"),
                  validator: (value) {
                    if (value!.length < 2) {
                      return "password tidak boleh kosong";
                    }
                    return null;
                  },
                ),TextFormField(
                  controller: controller.tahunterbitController,
                  decoration: InputDecoration(hintText: "Tahun Terbit"),
                  validator: (value) {
                    if (value!.length < 2) {
                      return "tahun terbit tidak boleh kosong";
                    }
                    return null;
                  },
                ),
                Obx(() => controller.loading.value
                    ? CircularProgressIndicator()
                    : ElevatedButton(
                    onPressed: () {
                      controller.login();
                    },
                    child: Text("Login"))),
                // ElevatedButton(onPressed: (){controller.login();}, child: Text("Login"))
              ],
            ),
          )),
    );
  }
}
