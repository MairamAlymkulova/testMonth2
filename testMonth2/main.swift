
import Foundation

var question1=Questions(question: "Годы ВОВ?", type: .low, prize: 3000, answers: ["1939-1945": true,
                        "1941-1945": false,
                        "1908-1912": false,
                        "1910-1914": false])
var question2=Questions(question: "Какое из этих животных НЕ относится к китайскому Зодиаку?", type: .low,prize: 3000, answers: [
            "Слон":true,
            "Петух":false,
            "Свинья":false,
            "Обезьяна":false])
var question3=Questions(question: "Какой цвет получается при смешивании синего и красного?", type: .fix ,prize: 4000, answers: [
                    "фиолетовый": true,
                    "желтый": false,
                    "оранжевый": false,
                    "черный": false])

var question4=Questions(question: "Какая из планет Солнечной системы самая горячая?", type: .medium, prize: 20000,answers: [
            "Венера":true,
            "Марс":false,
            "Плутон":false,
            "Солнце":false])

var question5=Questions(question: "В каком городе проходили Олимпийские игры 2000 года?", type: .medium,prize: 20000, answers: [
            "Сидней":true,
            "Париж":false,
            "Токио":false,
            "Тайбэй":false])

var question6=Questions(question: "Как зовут трехглавую собаку Хагрида, охраняющую Философский камень?", type: .fix, prize: 50000, answers: [
            "Пушистик":true,
            "Клювокрыл":false,
            "Винки":false,
            "Магориан":false])
var question7=Questions(question: "Как называется самая длинная горная цепь в Южной Америке?", type: .high, prize: 200000, answers: [
            "Анды":true,
            "Альпы":false,
            "Аппалачи":false,
            "Гималаи":false])
var question8=Questions(question: "В какой стране находится самый высокий водопад в Европе?", type: .high, prize: 200000, answers: [
            "Норвегия":true,
            "Швеция":false,
            "Финляндия":false,
            "Исландия":false])
var question9=Questions(question: "Какая столица Намибии?", type: .high,prize: 200000, answers: [
            "Виндхук":true,
            "Кигали":false,
            "Аккра":false,
            "Уагадугу":false])
var question10=Questions(question: "В каком немецком городе родилась будущая императрица России Екатерина II", type: .fix, prize: 300000, answers: [
            "Штеттин":true,
            "Цербст":false,
            "Щецин":false,
            "Дорнбург":false])
var questions=[question1, question2, question3, question4, question5, question6, question7, question8, question9, question10]

var player = MillionareGame( questions: questions)
player.addPlayersInfo()
player.playGame()
