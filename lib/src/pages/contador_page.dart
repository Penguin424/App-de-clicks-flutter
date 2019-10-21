import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget
{

  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage>
{

  final _textoSIze = TextStyle(fontSize: 25.0); 
  int _conteo = 0;

  @override
   Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
         title: Text('Aplicacion de clicks'),
         centerTitle: true,
         elevation: 5.5,
       ),
      body: Center(
         child: Column(
           children: <Widget>[
             Text('Numero de clicks', 
              style: _textoSIze
             ),
             Text('$_conteo', 
              style: _textoSIze
             )
           ],
           mainAxisAlignment: MainAxisAlignment.center,
         ),
       ),
      floatingActionButton: _crearBotones(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
     );
   }
  
  Widget _crearBotones()
  {

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        SizedBox(width: 10.0,),
        FloatingActionButton(onPressed: () => setState(() =>_conteo++ ),child: Icon(Icons.add)),
        Expanded(child: SizedBox(),),
        FloatingActionButton(onPressed: () => setState(() => _conteo == 0 ? _conteo=0:_conteo-- ),child: Icon(Icons.remove)),
        SizedBox(width: 10.0,),
      ],
    );

  }

}