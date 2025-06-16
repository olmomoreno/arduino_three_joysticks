<!-- Improved compatibility of back to top link: See: https://github.com/othneildrew/Best-README-Template/pull/73 -->
<a id="readme-top"></a>
<!--
*** Source:
*** https://github.com/othneildrew/Best-README-Template
-->



<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![Processing][processing_second-shield]][processing-url]
[![Arduino][arduino_second-shield]][arduino-url]
[![Fritzing][fritzing_second-shield]][fritzing-url]



<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/olmomoreno/arduino_three_joysticks">
    <img src="data/images/processing_2021_logo.png" alt="Logo" width="100" height="100">
  </a>

  <h3 align="center">Arduino three joysticks </h3>

  <p align="center">
    A Processing and Arduino interactive sketch
    <br />
    <a href="https://github.com/olmomoreno/arduino_three_joysticks"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/olmomoreno/arduino_three_joysticks">View Demo</a>
    &middot;
    <a href="https://github.com/olmomoreno/arduino_three_joysticks/issues/new?labels=bug&template=bug-report---.md">Report Bug</a>
    &middot;
    <a href="https://github.com/olmomoreno/arduino_three_joysticks/issues/new?labels=enhancement&template=feature-request---.md">Request Feature</a>
  </p>
</div>



<!-- TABLE OF CONTENTS -->
<details>
  <summary>📋 Table of Contents</summary>
  <ol>
    <li>
      <a href="#-about-the-project">About The Project</a>
      <ul>
        <li><a href="#%EF%B8%8F-built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#-getting-started">Getting Started</a>
      <ul>
        <li><a href="#-installation">Installation</a></li>
         <li><a href="#-opening">Opening</a></li>
      </ul>
    </li>
    <li><a href="#%EF%B8%8F-usage">Usage</a></li>
    <li><a href="#%EF%B8%8F-roadmap">Roadmap</a></li>
    <li><a href="#-contributing">Contributing</a></li>
    <li><a href="#-license">License</a></li>
    <li><a href="#-contact">Contact</a></li>
    <li><a href="#-acknowledgments">Acknowledgments</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## 📖 About The Project

[![Arduino_three_joysticks][product-screenshot]](https://github.com/olmomoreno/arduino_three_joysticks)

This is an interactive Processing sketch. It displays two main areas in the window: a) a card control element (left) and b) an animation (right). The card control involves a slider that changes the speed value of a square that bounces horizontally when the mouse is pressed. The square is horizontally displaced from side to side, once the square´s edge reaches the left or right limit, it automatically changes direction. There are 20 different speeds that can be adjusted to increase or decrease the square´s displacement speed. The card´s slider is active when the mouse hovers and is pressed on the slider´s button. Once the mouse is released, the slider´s button is unactive.

<p align="right">(<a href="#readme-top">back to top</a>)</p>



### 🛠️ Built With

* [![Processing][processing-shield]][processing-url]
* [![Arduino][arduino-shield]][arduino-url]
* [![VSCode][vscode-shield]][vscode-url]
* [![Fritzing][fritzing-shield]][fritzing-url]


### 📋 Bill of Materials (BoM)

| 🔢 Qty | 🧩 Component                  | 🔍 Description                           | 🔗 Link |
|-------:|------------------------------|-------------------------------------------|:--------:|
| 1️⃣    | 🎮 **Thumb Joystick**        | Analog joystick module for X/Y control    | [SparkFun Thumb Joystick](https://www.sparkfun.com/thumb-joystick.html) |
| 1️⃣    | 🎚️ **Slide Joystick**        | Linear analog slider (X-axis)            | [SparkFun Slide Joystick](https://www.sparkfun.com/thumb-slide-joystick.html) |
| 1️⃣    | 🕹️ **5-Way Tactile Switch**  | Switch with up/down/left/right/press     | [SparkFun 5‑Way Tactile Switch](https://www.sparkfun.com/5-way-tactile-switch.html) |
| 1️⃣    | 💡 **Arduino UNO R3**        | Main microcontroller board               | [SparkFun Arduino UNO R3](https://www.sparkfun.com/arduino-uno-r3.html) |


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->
## 🚀 Getting Started

This section will help you get Processing and Arduino installed and show you how to open the `arduino_three_joysticks` and `three_joysticks.ino` sketches.

### 🧩 Installation (Processing)

Follow these steps to install **Processing** on your computer:

#### 🖥️ For Windows
1. 🔽 Download the latest version of Processing from the official website: [https://processing.org/download](https://processing.org/download)
2. 📦 Unzip the downloaded `.zip` file.
3. 🖱️ Open the unzipped folder and double-click `processing.exe` to launch Processing.
4. ✅ You're ready to run sketches!

#### 🐧 For Linux
1. 🔽 Download the Linux version from: [https://processing.org/download](https://processing.org/download)
2. 📦 Extract the archive (`.tar.gz`) to a folder of your choice.
3. 💻 Open a terminal and navigate to the extracted folder.
4. 🏁 Launch Processing by running:
   ```bash
   ./processing

### 📂 Opening

To open the arduino_three_joysticks sketch in Processing:

🧭 Launch the Processing IDE.

1. 📁 Go to File > Open...
2. 📂 Navigate to the arduino_three_joysticks folder.
3. 📄 Select the arduino_three_joysticks.pde file.
4. ▶️ Click the Run button (or press Ctrl + R) to execute the sketch.

### 🧩 Installation (Arduino)

Follow these steps to install **Arduino IDE** on your computer:

#### 🖥️ For Windows
1. 🔽 Download the latest version of the Arduino IDE from the official website: https://www.arduino.cc/en/software
2. 📦 Run the downloaded installer (.exe) and follow the installation prompts.
3. 🖱️ Once installed, launch the Arduino IDE from your Start menu or desktop.
4. ✅ You're ready to upload sketches to your board!

#### 🐧 For Linux
1. 🔽 Download the Linux version from: https://www.arduino.cc/en/software
2. 📦 Extract the downloaded archive (.tar.xz) to a folder of your choice.
3. 💻 Open a terminal, navigate to the extracted folder, and run the install script:
```bash
./install.sh
```
4. 🏁 Launch the Arduino IDE by running:
```bash
arduino
```

### 📂 Opening

To open the three_joysticks.ino sketch in Arduino:

🧭 Launch the Arduino IDE.

1. 📁 Go to File > Open...
2. 📂 Navigate to the arduino/three_joysticks/ folder.
3. 📄 Select the three_joysticks.ino file.
4. 🔌 Connect your Arduino board via USB.
5. ✅ Select the correct board and port from the Tools menu.
6.  ⬆️ Click the Upload button (right arrow icon) to upload the sketch to your Arduino.

> [!TIP]
> It is highly recommended that before running the Processing sketch, you download the Arduino sketch to the Arduino UNO board and then run the Processing sketch.

> [!WARNING]  
> If you run the Processing sketch first and then you try to download the Arduino sketch to the Arduino UNO board, the serial communication port in the Processing skectch is running; you will experience a communication error when trying to download the Arduino skecth to the Arduino UNO board because the serial communication port is open.

### 🧩 Installation (Fritzing)
Follow these steps to install Fritzing on your computer:

#### 🖥️ For Windows
1. 🔽 Download the latest version of Fritzing from the official website: https://fritzing.org/download
2. 📦 Run the downloaded .exe installer and follow the setup instructions.
3. 🖱️ After installation, launch Fritzing from your Start menu or desktop.
4. ✅ You're ready to start building circuit diagrams!

#### 🐧 For Linux
1. 🔽 Download the Linux version (.tar.bz2) from: https://fritzing.org/download
2. 📦 Extract the archive to a folder of your choice:
```bash
tar -xvjf fritzing-*.tar.bz2
```
3. 💻 Open a terminal, navigate to the extracted folder, and run:
```bash
./Fritzing
```
### 📂 Opening
To open the square_bouncing circuit diagram in Fritzing:
1. 🧭 Launch the Fritzing application.
2. 📁 Go to File > Open...
3. 📂 Navigate to the folder fritzing/
4. 📄 Select the three_joysticks.fzz file.
5. 🛠️ The project will open in the Breadboard, Schematic, or PCB view depending on the saved state.
6. ✏️ You can now view, edit, or export the circuit diagram.

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- USAGE EXAMPLES -->
## 🛠️ Usage

In this sketch, the "Thumb Joystick" acts as a green paint brush when the cursor moves. You can erase what is drawn by pressing the "Thumb Joystick" push button. You can easily change the cursor’s colour by modifying the `fill()` instruction. "Thumb Slide Joystick" and "5 Way Tactile Switch" cursors do not act as paint brushes.

#### 🎨 Color Definitions

```java
// Color definitions
color green1 = color(29, 185, 84); 
color green2 = color(35, 124, 102); 
color gray1  = color(33, 33, 33);
color gray2  = color(83, 83, 83);
color white  = color(255);
color black  = color(0);
```

To change the square's color, locate the following line in the `.pde` file:
```java
fill(green1);
```

Replace `green1` with any of the other predefined color variables (e.g., `gray2`, `black`, `white`, etc.), or define your own:

```java
fill(color(200, 100, 50)); // Custom color
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- ROADMAP -->
## 🗺️ Roadmap

- [x] Add cards GUI
- [x] Add basic joystick circle animation
- [x] Add Arduino data acquisition
- [x] Add card control interaction
- [x] Add joystick circles control interaction
- [X] Add Fritzing documentation

See the [open issues](https://github.com/olmomoreno/arduino_three_joysticks/issues) for a full list of proposed features (and known issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- CONTRIBUTING -->
## 🤝 Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/arduino_three_joysticks`)
3. Commit your Changes (`git commit -m 'Add some arduino_three_joysticks'`)
4. Push to the Branch (`git push origin feature/arduino_three_joysticks`)
5. Open a Pull Request

### 🏆 Top contributors:

<a href="https://github.com/olmomoreno/arduino_three_joysticks/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=olmomoreno/arduino_three_joysticks" alt="contrib.rocks image" />
</a>

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- LICENSE -->
## 📄 License

Distributed under the MIT License. See `LICENSE.txt` for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- CONTACT -->
## 📬 Contact

Olmo A. Moreno F. - [Linkedin](https://www.linkedin.com/in/olmo-alonso-moreno-franco/)

Project Link: [https://github.com/olmomoreno/arduino_three_joysticks](https://github.com/olmomoreno/arduino_three_joysticks)

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- ACKNOWLEDGMENTS -->
## 🎉 Acknowledgments

Template adapted from [othneildrew/Best-README-Template](https://github.com/othneildrew/Best-README-Template)

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/olmomoreno/arduino_three_joysticks.svg?style=for-the-badge
[contributors-url]: https://github.com/olmomoreno/arduino_three_joysticks/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/olmomoreno/arduino_three_joysticks.svg?style=for-the-badge
[forks-url]: https://github.com/olmomoreno/arduino_three_joysticks/network/members
[stars-shield]: https://img.shields.io/github/stars/olmomoreno/arduino_three_joysticks.svg?style=for-the-badge
[stars-url]: https://github.com/olmomoreno/arduino_three_joysticks/stargazers
[issues-shield]: https://img.shields.io/github/issues/olmomoreno/arduino_three_joysticks.svg?style=for-the-badge
[issues-url]: https://github.com/olmomoreno/arduino_three_joysticks/issues
[license-shield]:  https://img.shields.io/badge/LICENSE-MIT_LICENSE-FFFFFF.svg?style=for-the-badge
[license-url]: https://github.com/olmomoreno/arduino_three_joysticks/blob/main/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/othneildrew
[product-screenshot]: data/images/arduino_three_joysticks.png
[processing-shield]: https://img.shields.io/badge/Designed_for-Processing-FFFFFF.svg?style=for-the-badge&logo=processingfoundation
[processing_second-shield]: https://img.shields.io/badge/Processing-006699.svg?style=for-the-badge&logo=processingfoundation
[processing-url]: https://processing.org/
[arduino-shield]: https://img.shields.io/badge/Developed_with-Arduino-FFFFFF.svg?style=for-the-badge&logo=arduino
[arduino_second-shield]: https://img.shields.io/badge/Arduino-006699.svg?style=for-the-badge&logo=arduino
[arduino-url]: https://www.arduino.cc/
[fritzing-shield]: https://img.shields.io/badge/Documented_with-Fritzing-FFFFFF.svg?style=for-the-badge&logo=fritzing
[fritzing_second-shield]: https://img.shields.io/badge/Fritzing-006699.svg?style=for-the-badge&logo=fritzing
[fritzing-url]: https://fritzing.org/
[vscode-shield]: https://img.shields.io/badge/Coded_with-VSCode-FFFFFF.svg?style=for-the-badge
[vscode-url]: https://code.visualstudio.com/
