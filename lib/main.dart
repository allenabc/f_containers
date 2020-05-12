import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

/*

BoxConstraints

 */

void main() {
  runApp(
    MaterialApp(
      home: Container(
          color: Colors.green,
        child: ContainerExample8(),
        ),
    ),
    );
}

// About as simple as it gets
class ContainerExample1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          width: 300,
          height: 300,
          color: Colors.amber[600],
          // Add a Text child
          child: Text('Yellow Square Container 300x300 \nin Center',
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  .copyWith(color: Colors.white)),
        ),
      );
  }
}

// Invisible Container
class ContainerExample2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300.0,
        height: 300.0,
        child: Text('An invisible 300x300 Container with a child text box',
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .headline4
                .copyWith(color: Colors.black)),
      ),
    );
  }
}

// Unbounded Container adjusts to Text Widget
class ContainerExample3  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.amber[600],
        child: Text('This unbounded Container is exactly sized to contain this text',
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .headline4
                .copyWith(color: Colors.black)),
      ),
    );
  }
}

// Fixed sized Container with padding
// LTRB left top right bottom
class ContainerExample4  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.amber[600],
        // left top right bottom
        padding: EdgeInsets.fromLTRB(40,40,0,0.0),
        child: Text('This unbounded Container is sized to contain this text. \nText box has padding Left and Top',
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .headline4
                .copyWith(color: Colors.black)),
      ),
    );
  }
}

// Margin is outer or surrounding space around Widget
// Padding is spacing inside Widget
// LTRB left top right bottom
class ContainerExample5  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300.0,
        height: 300.0,
        color: Colors.amber[600],
        // left top right bottom
        margin: EdgeInsets.fromLTRB(80,0,0,0),
        child: Text('With left padding this centered Container is pushed off center 80 pixels',
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .headline4
                .copyWith(color: Colors.black)),
      ),
    );
  }
}

// The Container can force alignment of it's child
class ContainerExample6  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300.0,
        height: 300.0,
        alignment: AlignmentDirectional.bottomCenter,
        color: Colors.amber[600],
        // left top right bottom
        child: Text('Container -alignment- property forces bottomCenter alignment on Child Text Widget',
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .headline4
                .copyWith(color: Colors.black)),
      ),
    );
  }
}

// The Container can Box Constrain it's Child
class ContainerExample7  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300.0,
        height: 300.0,
        constraints: BoxConstraints.tight(Size(180,180)),
        color: Colors.amber[600],
        // left top right bottom
        child: Text('Container box constraint imposed on child Text Widget',
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .headline4
                .copyWith(color: Colors.black)),
      ),
    );
  }
}

// Container Matrix example
class ContainerExample8  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Container(
      color: Color.fromARGB(255, 66, 165, 245),
      child: Container(
          padding: new EdgeInsets.all(40.0),
          color: Colors.orange,
          child: Text("Transformed Text Box longer box 7"),
          transform: new Matrix4.rotationZ(0.3)
      ),
    ),
    );
  }
}

// Container Shape Decoration



