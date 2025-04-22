
Notes: Jika tidak bisa run gunakan fvm flutter version 3.27.0
lib/
├── core/                 → Base usecases / logic dasar
├── data/                 
│   ├── api/              → Layer komunikasi dengan API (dio)
│   ├── repositories/     → Implementasi penyedia data
├── domain/
│   ├── entities/         → Model bisnis / objek utama
│   └── usecases/         → Use case logic (domain driven)
├── presentations/        
│   ├── audio/            → View + Cubit untuk fitur audio
│   ├── auth/             → View login/onboarding
│   └── course/           → View detail course
├── router/               → Setup dan konfigurasi AutoRoute
└── main.dart             → Entry point aplikasi
