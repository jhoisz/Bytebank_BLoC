<h1 align="center"> Bytebank 5️⃣: Streams de programação reativa com BLoC </h1>

## ℹ️ Sobre o projeto

Aplicação **mobile** desenvolvida durante o curso [Flutter: Streams de programação reativa com BLoC](https://cursos.alura.com.br/course/flutter-bloc) de Flutter, na plataforma **[Alura](https://www.alura.com.br/)**, pelo instrutor [Guilherme Silveira](https://cursos.alura.com.br/user/guilherme-silveira).

## 🗒️ Flutter BLoC

Usamos Bloc em uma aplicação quando queremos separar a lógica/regras de negócio da interface, nesse caso separamos a lógica em classes, uma para cada página, e reutilizamos quando for necessário. _E se a página não possuir regra de negócios?_ Nesse caso, não é preciso utilizar o Bloc, um exemplo disso seria uma página de detalhes, por exemplo.

### Usando o BLoC

Usamos o pacote [Flutter BLoC](https://pub.dev/packages/flutter_bloc) para utilizar o gerenciamento de estados na nossa aplicação. Por padrão, a página deve possuir um Cubit, View e Container. Usando o exemplo do contador, vamos ver o que cada uma dessas partes faz e como ficariam:

#### **Cubit**

> Classe responsável por gerenciar informações.

```dart
class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);
  void increment() => emit(state + 1);
  void decrement() => emit(state - 1);
}
```

#### **Container**

> Integra o Cubit e a View.

```dart
class CounterContainer extends StatelessWidget {
  const CounterContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterCubit(),
      child: const CounterView(),
    );
  }
}
```

#### **View**

> Mostra as informações.

Exibindo informação:

```dart
BlocBuilder<CounterCubit, int>(
  builder: (context, state) {
    return Text(
      "$state",
      style: textTheme.headline2,
    );
  },
),
```

Alterando o estado:

```dart
context.read<CounterCubit>().increment();
```

## :sparkles: Funcionalidades do projeto

A aplicação possui a funcionalidade de gerenciamento dos estados das telas utilizando o sistema de BLoC, foi adicionada a função de alteração de nome também.

<p align="center">
  <img src="https://github.com/jhoisz/Bytebank_BLoC/blob/main/bloc.gif" alt= "Gif colorido da aplicação desenvolvida." />
</p> 

## :hammer: Tecnologias usadas

Neste projeto foram usadas as seguintes tecnologias:

> Framework [Flutter](https://flutter.dev/)

> Linguagem [Dart](https://dart.dev/)

## :arrow_forward: Como executar

Primeiro você deve [instalar flutter](https://docs.flutter.dev/get-started/install).

Então, você pode clocar e entrar na pasta do projeto:

```bash
git clone https://github.com/jhoisz/Bytebank_BLoC
cd Bytebank_BLoC
```

Agora, para testar, você deve instalar os pacotes/dependêncas e usar um dispositivo conectado ao seu computador ou usar um emulador:

```bash
Flutter get packages
flutter run
```
