import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:petugas_perpustakaan_kelas_c/app/data/model/response_pinjam.dart';

import '../../../routes/app_pages.dart';
import '../controllers/peminjaman_controller.dart';

class PeminjamanView extends GetView<PeminjamanController> {
  const PeminjamanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PeminjamanView'),
        centerTitle: true,
      ),
      body: controller.obx((state) => ListView.separated(
        itemCount: state!.length,
        itemBuilder: (context, index){
          DataPinjam dataBook = state[index];
          return ListTile(
            title: Text("${dataBook.book?.judul}"),
            subtitle: Text("Peminjam ${dataBook.user?.nama}\nDipinjam tanggal ${dataBook.tanggalPinjam}\nDikembalikan tanggal ${dataBook.tanggalKembali}\nStatus ${dataBook.status} "),
          );
        },
        separatorBuilder: (context, index)=> Divider(),
      )),
    );
  }
}
