lib/
│
├── main.dart
│
├── core/
│   ├── constants/           # Colores, estilos, rutas, textos fijos
│   ├── utils/               # Funciones reutilizables (validaciones, helpers)
│   ├── services/            # Lógica de conexión con APIs, base de datos, etc.
│   └── config/              # Configuración general (ej. Firebase, entorno)
│
├── data/
│   ├── models/              # Clases de datos (User, AccessLog, QRCode)
│   ├── repositories/        # Fuente de datos: local o remota
│   └── providers/           # Controladores de estado o streams
│
├── presentation/
│   ├── screens/             # Cada pantalla principal (Home, Login, Scanner, etc.)
│   │   ├── login/
│   │   ├── home/
│   │   ├── qr_scanner/
│   │   └── history/
│   │
│   ├── widgets/             # Componentes visuales reutilizables (botones, cards)
│   ├── themes/              # Configuración de temas (colores, tipografía)
│   └── navigation/          # Rutas o controladores de navegación
│
└── state/
    ├── bloc/                # Si usas Bloc
    ├── providers/           # Si usas Provider
    └── controllers/         # Si usas GetX o Riverpod
