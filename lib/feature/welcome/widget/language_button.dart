// import 'package:flutter/material.dart';
// import 'package:whatsapp_clone/common/extension/custom_theme_extension.dart';
// import 'package:whatsapp_clone/common/utils/coloors.dart';

// class LanguageButton extends StatelessWidget {
//   const LanguageButton({
//     super.key,
//   });

//   showBottomSheet(context) {
//     return showModalBottomSheet(
//       context: context,
//       builder: (context) {
//         return Padding(
//           padding: const EdgeInsets.symmetric(vertical: 10),
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Container(
//                 height: 4,
//                 width: 30,
//                 decoration: BoxDecoration(
//                   color: context.theme.greyColor!.withOpacity(0.5),
//                   borderRadius: BorderRadius.circular(5),
//                 ),
//               ),
//               const SizedBox(height: 20),
//               Row(
//                 children: [
//                   IconButton(
//                     onPressed: () => Navigator.of(context).pop,
//                     splashColor: Colors.transparent,
//                     splashRadius: 22,
//                     iconSize: 22,
//                     constraints: const BoxConstraints(minWidth: 40),
//                     icon: const Icon(Icons.close_outlined),
//                     color: Coloors.greyDark,
//                   ),
//                   const SizedBox(width: 30),
//                   const Text(
//                     "App language",
//                     style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 10),
//               Divider(
//                 color: context.theme.greyColor!.withOpacity(0.3),
//                 thickness: 0.5,
//               ),
//               RadioListTile(
//                 value: true,
//                 groupValue: true,
//                 onChanged: (value) {},
//                 activeColor: Coloors.greenDark,
//                 title: const Text("English"),
//                 subtitle: Text(
//                   "(phon's language)",
//                   style: TextStyle(
//                     color: context.theme.greyColor,
//                   ),
//                 ),
//               ),
//               RadioListTile(
//                 value: true,
//                 groupValue: false,
//                 onChanged: (value) {},
//                 activeColor: Coloors.greenDark,
//                 title: const Text("Viet Name"),
//                 subtitle: Text(
//                   "Viet Name",
//                   style: TextStyle(
//                     color: context.theme.greyColor,
//                   ),
//                 ),
//               ),
//               RadioListTile(
//                 value: true,
//                 groupValue: false,
//                 onChanged: (value) {},
//                 activeColor: Coloors.greenDark,
//                 title: const Text("Российская Федерация"),
//                 subtitle: Text(
//                   "Russian Federation",
//                   style: TextStyle(
//                     color: context.theme.greyColor,
//                   ),
//                 ),
//               ),
//               RadioListTile(
//                 value: true,
//                 groupValue: false,
//                 onChanged: (value) {},
//                 activeColor: Coloors.greenDark,
//                 title: const Text("中国"),
//                 subtitle: Text(
//                   "China",
//                   style: TextStyle(
//                     color: context.theme.greyColor,
//                   ),
//                 ),
//               ),
//               RadioListTile(
//                 value: true,
//                 groupValue: false,
//                 onChanged: (value) {},
//                 activeColor: Coloors.greenDark,
//                 title: const Text("日本"),
//                 subtitle: Text(
//                   "Japan",
//                   style: TextStyle(
//                     color: context.theme.greyColor,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       color: context.theme.langBtnColor,
//       borderRadius: BorderRadius.circular(10),
//       child: InkWell(
//         onTap: () => showBottomSheet(context),
//         borderRadius: BorderRadius.circular(20),
//         splashFactory: NoSplash.splashFactory,
//         highlightColor: context.theme.langBtnHighlightColor,
//         child: Padding(
//           padding: const EdgeInsets.symmetric(
//             horizontal: 16,
//             vertical: 8,
//           ),
//           child: Row(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Icon(
//                 Icons.language,
//                 color: context.theme.blueColor,
//               ),
//               const SizedBox(width: 10),
//               Text(
//                 "English",
//                 style: TextStyle(
//                   color: context.theme.blueColor,
//                 ),
//               ),
//               Icon(
//                 Icons.keyboard_arrow_down,
//                 color: context.theme.blueColor,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/common/extension/custom_theme_extension.dart';
import 'package:whatsapp_clone/common/utils/coloors.dart';

class LanguageButton extends StatelessWidget {
  const LanguageButton({
    super.key,
  });

  showBottomSheet(context) {
    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 4,
                width: 30,
                decoration: BoxDecoration(
                  color: context.theme.greyColor!.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  IconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    splashColor: Colors.transparent,
                    splashRadius: 22,
                    iconSize: 22,
                    constraints: const BoxConstraints(minWidth: 40),
                    icon: const Icon(Icons.close_outlined),
                    color: Coloors.greyDark,
                  ),
                  const SizedBox(width: 30),
                  const Text(
                    "App language",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Divider(
                color: context.theme.greyColor!.withOpacity(0.3),
                thickness: 0.5,
              ),
              // Scrollable List
              Expanded(
                child: Scrollbar(
                  thumbVisibility: true,
                  thickness: 4.0,
                  radius: const Radius.circular(5.0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        RadioListTile(
                          value: true,
                          groupValue: true,
                          onChanged: (value) {},
                          activeColor: Coloors.greenDark,
                          title: const Text("English"),
                          subtitle: Text(
                            "(phone's language)",
                            style: TextStyle(
                              color: context.theme.greyColor,
                            ),
                          ),
                        ),
                        RadioListTile(
                          value: true,
                          groupValue: false,
                          onChanged: (value) {},
                          activeColor: Coloors.greenDark,
                          title: const Text("Vietnam"),
                          subtitle: Text(
                            "Vietnamese",
                            style: TextStyle(
                              color: context.theme.greyColor,
                            ),
                          ),
                        ),
                        RadioListTile(
                          value: true,
                          groupValue: false,
                          onChanged: (value) {},
                          activeColor: Coloors.greenDark,
                          title: const Text("Российская Федерация"),
                          subtitle: Text(
                            "Russian Federation",
                            style: TextStyle(
                              color: context.theme.greyColor,
                            ),
                          ),
                        ),
                        RadioListTile(
                          value: true,
                          groupValue: false,
                          onChanged: (value) {},
                          activeColor: Coloors.greenDark,
                          title: const Text("中国"),
                          subtitle: Text(
                            "China",
                            style: TextStyle(
                              color: context.theme.greyColor,
                            ),
                          ),
                        ),
                        RadioListTile(
                          value: true,
                          groupValue: false,
                          onChanged: (value) {},
                          activeColor: Coloors.greenDark,
                          title: const Text("日本"),
                          subtitle: Text(
                            "Japan",
                            style: TextStyle(
                              color: context.theme.greyColor,
                            ),
                          ),
                        ),
                        RadioListTile(
                          value: true,
                          groupValue: false,
                          onChanged: (value) {},
                          activeColor: Coloors.greenDark,
                          title: const Text("ประเทศไทย"),
                          subtitle: Text(
                            "Thailand",
                            style: TextStyle(
                              color: context.theme.greyColor,
                            ),
                          ),
                        ),
                        RadioListTile(
                          value: true,
                          groupValue: false,
                          onChanged: (value) {},
                          activeColor: Coloors.greenDark,
                          title: const Text("ສ.ປ.ປ ລາວ"),
                          subtitle: Text(
                            "Laos",
                            style: TextStyle(
                              color: context.theme.greyColor,
                            ),
                          ),
                        ),
                        // Add more languages if needed
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.theme.langBtnColor,
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        onTap: () => showBottomSheet(context),
        borderRadius: BorderRadius.circular(20),
        splashFactory: NoSplash.splashFactory,
        highlightColor: context.theme.langBtnHighlightColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.language,
                color: context.theme.blueColor,
              ),
              const SizedBox(width: 10),
              Text(
                "English",
                style: TextStyle(
                  color: context.theme.blueColor,
                ),
              ),
              Icon(
                Icons.keyboard_arrow_down,
                color: context.theme.blueColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
