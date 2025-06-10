# TEGRotem
Application to facilitate result interpretation and treat bleeding

# 🩸 TEG & ROTEM Hemorrhage Algorithm App (iOS, Xojo)

This Xojo-built iOS app allows clinicians to walk through a **point-of-care bleeding algorithm** based on either **TEG** or **ROTEM** results.

## 📲 Features

- Guided decision steps based on:
  - **TEG**: CKH-R, LY30
  - **ROTEM**: EXTEM A5, FIBTEM A5, EXTEM CT, FIBTEM ML
- Visual feedback with ⚠️ Warning and ✅ Normal icons
- Dynamic step-by-step UI updates
- Restart logic after reassessment time
- Clean separation of TEG and ROTEM result classes

## 🛠️ Project Structure

```
TEGRotemApp/
├── App.xojo_code
├── AlgorithmStepScreen.xojo_code
├── StartScreen.xojo_code
├── StepRowContainer.xojo_code
├── TEGResult.xojo_code
├── ROTEMResult.xojo_code
├── TEGRotemApp.xojo_binary_project
└── README.md
```

## 🚀 Getting Started

1. Open `TEGRotemApp.xojo_binary_project` in Xojo 2023r4 or later.
2. Run the app in iOS Simulator.
3. Choose either **TEG** or **ROTEM** mode.
4. Progress through the algorithm using sample data.
5. Use the "Restart" button to re-initiate logic if bleeding continues.

## 💡 Notes

- This is a **clinical decision support prototype** — not intended for direct clinical use.
- Built for educational/testing purposes.

## 📷 Screenshots

_(You can add screenshots of the app on a device or simulator here)_

## 🔒 License

MIT License — for educational and open-source development.

