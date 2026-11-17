# Rgram

Пустой Rust-проект: TDLib + Iced + Tokio + dotenvy.

C++-исходники TDLib находятся в `vendor/td`. Версия 1.8.61,
исходный commit: `6d509061574d684117f74133056aa43df89022fc`
из https://github.com/tdlib/td. Лицензия сохранена в `vendor/td/LICENSE_1_0.txt`.

Нужны Rust, CMake, компилятор C++17, gperf, OpenSSL и zlib.
Из корня проекта:

```sh
make build
```

Команда собирает локальное ядро, устанавливает его в `target/tdlib`
и пересобирает Rust-проект. После изменений в `vendor/td` запускай её снова.
`cargo build` отдельно не пересобирает C++-исходники.
`target` содержит только результаты сборки и не хранится в Git.
