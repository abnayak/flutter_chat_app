import "package:flutter/material.dart";

void main(List<String> args) {
  runApp(new MaterialApp(
    title: "Friendly Chat App",
    home: new ChatWindow(),
  ));
}

class ChatWindow extends StatefulWidget {
  @override
  State createState() => new _ChatWindowState();
}

class _ChatWindowState extends State<ChatWindow> {
  TextEditingController _textEditingController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: new Text("Chat App")),
        body: _buildTextComposer());
  }

  Widget _buildTextComposer() {
    return new Container(
      margin: new EdgeInsets.all(8.0),
      child: new Row(
        children: <Widget>[],
      ),
    );
  }

  Widget _buildSendButton() {
    return new Container(
      margin: new EdgeInsets.symmetric()
    );


    new IconButton(icon: new Icon(Icons.send), onPressed: _onSendpressed)
  }

  Widget _buildTextField() {
    return new Flexible(
        child: new TextField(
      decoration: new InputDecoration(hintText: "Input Text Here"),
      controller: _textEditingController,
      onSubmitted: _onSubmitted,
    ));
  }

  void _onSubmitted(String value) {
    _textEditingController.clear();
  }

  void _onSendpressed() {
  }
}

/*class MessageInput extends StatelessWidget {
  TextEditingController _textEditingController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: new Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new TextField(
            controller: _textEditingController,
            onSubmitted: _handleOnSubmit,
            decoration: new InputDecoration(hintText: "Write your message"),
          ),
          new IconButton(icon: new Icon(Icons.send), onPressed: () => _handleOnSubmit(_textEditingController.text))
        ],
      ),
    );
  }

  void _handleOnSubmit(String value) {
    _textEditingController.clear();
  }
}*/
