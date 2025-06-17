import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:16),
      child: Container(
        decoration: BoxDecoration(
          color:Color(0xffFFCC80),
          borderRadius: BorderRadius.circular(16),
          ),  
          child: Padding(
            padding: const EdgeInsets.only(top: 24,bottom: 24,left:13),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ListTile(
                  title:Text('Flutter Tips',style: TextStyle(
                    color: Colors.black,
                    fontSize: 26
                  ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 16,bottom: 24),
                    child: Text(
                      'build your career with Tharwat Samy',style: TextStyle(
                        color: Colors.black.withOpacity(0.34),
                        fontSize: 15
                    ),
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: (){}, 
                  icon: Icon(
                    Icons.delete,color:Colors.black,
                    size: 32,
                  )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 19),
                  child: Text(
                    'May21 , 2022',style:TextStyle(
                      color: Colors.black.withOpacity(0.7)
                      ),
                      ),
                )
              ],
            ),
          ),
      ),
    );
  }
}