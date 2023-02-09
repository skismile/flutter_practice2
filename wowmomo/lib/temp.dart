Widget BottomBox() {
  return Indexed(
    index: 2, //last at widget tree, but middle in order
    child: Positioned(
      top: 320,
      left: 0,
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50), topRight: Radius.circular(70))),
        height: 470,
        width: 400,
        child: Column(
          children: [
            const SizedBox(
              height: 70,
            ),
            const Text(
              "#MoreWOWEveryday",
              style: TextStyle(
                  color: Color.fromRGBO(249, 179, 19, 1),
                  // color: Colors.amber[700],
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
            RichText(
              text: const TextSpan(
                  // text: "Fulfill your",
                  // style: TextStyle(color: Colors.black, fontSize: 30),
                  children: [
                    TextSpan(
                      text: " Fulfill your",
                      style: TextStyle(color: Colors.black, fontSize: 30),
                    ),
                    TextSpan(
                      text: " cravings",
                      style: TextStyle(
                          color: Color.fromRGBO(249, 179, 19, 1), fontSize: 30),
                    ),
                    const TextSpan(
                      text: " here!",
                      style: TextStyle(color: Colors.black, fontSize: 30),
                    ),
                  ]),
            ),
            const SizedBox(
              height: 10,
            ),
            Text("Experience Health and Happiness in every"),
            Text("Order!"),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Expanded(flex: 1, child: Divider(color: Colors.black)),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Sign In / Register",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(child: Divider(color: Colors.black)),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 300,
              height: 50,
              child: TextField(
                keyboardType: TextInputType.numberWithOptions(),
                decoration: InputDecoration(
                    hintText: '+91 7001727360',
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    )),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 300,
              height: 50,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    backgroundColor: Color.fromRGBO(249, 179, 19, 1),
                  ),
                  onPressed: () {
                    Get.toNamed("/otp");
                  },
                  child: const Text("Next")),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Expanded(flex: 1, child: Divider(color: Colors.black)),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Or",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(child: Divider(color: Colors.black)),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey[100],
                  radius: 20,
                  child: const CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 15,
                    backgroundImage:
                        AssetImage("assets/images/google_logo.png"),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                CircleAvatar(
                  backgroundColor: Colors.grey[100],
                  radius: 20,
                  child: const CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.white,
                    // backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage("assets/images/threedot.png"),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ),
  );
}
