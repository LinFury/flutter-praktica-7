import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        body: Center(
          child: Wrapper(),
        ),
      ),
    );
  }
}

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        child: ProductCard()
    );
  }
}


/*
Мини-проект: Карточка товара
Задача: Создайте карточку товара, используя только изученные виджеты.
Требования:
• Заголовок товара (Text).
• Картинка товара
• Описание (Text в Container с отступами).
• Цена и рейтинг (два Text в Row).
• Всё это должно быть внутри Column и обернуто в Container с рамкой
(decoration: BoxDecoration(border: Border.all())).
 */

class ProductCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 240,
        margin: EdgeInsets.only(top:30),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Съёмное рулевое колесо FSR Steering Wheel",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600)),
              Container(
                alignment: Alignment.center,
                child: Image.network("https://basket-20.wbbasket.ru/vol3293/part329392/329392096/images/big/1.webp"),
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text("52 821 ₽"),
                  Text("Рейтинг: 5")
                ]
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text("В комплекте только рулевое колесо, для полноценной работы необходима рулевая база, докупается отдельно!!\n\nMoza FSR предлагает реалистичный опыт настоящих гонок. Руль имеет реалистичный размер, соответствующий реальному гоночному автомобилю. Магнитные подрулевые переключатели отличаются прочностью благодаря конструкции из кованого углеродного волокна. Руль оснащен 10-ю программируемыми клавишами с тактильной обратной связью."),
              ),
            ]
        )
    );
  }
}

