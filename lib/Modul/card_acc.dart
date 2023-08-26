// import 'package:flutter/material.dart';

// class CardAccWidget extends StatelessWidget {
//   const CardAccWidget({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 100,
//       margin: const EdgeInsets.symmetric(horizontal: 22),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(20),
//         border: Border.all(
//           color: Colors.black,
//           width: 2.5,
//         ),
//       ),
//       child: Row(
//         children: [
//           Container(
//             decoration: const BoxDecoration(
//               color: Colors.red,
//               borderRadius: BorderRadius.only(
//                 topLeft: Radius.circular(18),
//                 bottomLeft: Radius.circular(18),
//               ),
//             ),
//             width: 20,
//           ),
//           Expanded(
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
//               child: Column(
//                 children: const [
//                   ListTile(
//                     title: Text(
//                       'Google',
//                       style: TextStyle(
//                         fontFamily: 'TruenoBold',
//                         fontWeight: FontWeight.bold,
//                         fontSize: 15,
//                       ),
//                     ),
//                     subtitle: Text(
//                       'jauzack001@gmail.com',
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class CardAccWidget extends StatelessWidget {
  const CardAccWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Slidable(
      startActionPane: ActionPane(
        motion: const StretchMotion(),
        children: [
          SlidableAction(
            onPressed: ((context) {}),
            flex: 4,
            icon: Icons.edit,
            backgroundColor: const Color.fromARGB(1000, 39, 222, 192),
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(18),
              bottomRight: Radius.circular(18),
            ),
          ),
        ],
      ),

      endActionPane: ActionPane(
        motion: const StretchMotion(),
        children: [
          SlidableAction(
            flex: 4,
            onPressed: ((context) {}),
            icon: Icons.delete,
            backgroundColor: Colors.red,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(18),
              bottomLeft: Radius.circular(18),
            ),
          ),
        ],
      ),

      // actionExtentRatio: 0.25,
      // actions: [
      //   IconSlideAction(
      //     caption: 'Edit',
      //     color: Colors.blue,
      //     icon: Icons.edit,
      //     onTap: () {
      //       // Aksi saat tombol edit di tekan
      //     },
      //   ),
      // ],
      // secondaryActions: [
      //   IconSlideAction(
      //     caption: 'Delete',
      //     color: Colors.red,
      //     icon: Icons.delete,
      //     onTap: () {
      //       // Aksi saat tombol hapus di tekan
      //     },
      //   ),
      // ],
      child: Container(
        height: 100,
        margin: const EdgeInsets.symmetric(horizontal: 22),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Colors.black,
            width: 2.5,
          ),
        ),
        child: Row(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(18),
                  bottomLeft: Radius.circular(18),
                ),
              ),
              width: 20,
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                child: Column(
                  children: const [
                    ListTile(
                      title: Text(
                        'Google',
                        style: TextStyle(
                          fontFamily: 'TruenoBold',
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      subtitle: Text(
                        'jauzack001@gmail.com',
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
