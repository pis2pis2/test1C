#language: ru

@tree

Функционал: создание данных в справочнике "Номенклатура" с помощью цикла

Контекст:
Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий: создание данных в справочнике "Номенклатура" с помощью цикла
*Открыть справочник 'Номенклатура'
	И В командном интерфейсе я выбираю 'Справочники' 'Номенклатура'
	Тогда открылось окно 'Номенклатура'
*Создать 10 элементов справочника
	И Я запоминаю значение выражения '0' в переменную "Шаг"
	И Я запоминаю значение выражения 'Товар' в переменную "Название товара"
	И я делаю 10 раз
		И я запоминаю значение выражения '$Шаг$ + 1' в переменную "Шаг"
		И я запоминаю значение выражения '"Товар"+$Шаг$' в переменную "Название товара"
		Когда открылось окно 'Номенклатура'
		И я нажимаю на кнопку с именем 'FormCreate'
		Тогда открылось окно 'Номенклатура (создание)'
		И в поле с именем 'Description_en' я ввожу текст '$Название товара$'
		И я нажимаю кнопку выбора у поля с именем "ItemType"
		Тогда открылось окно 'Виды номенклатуры'
		И в таблице "List" я перехожу к строке:
			| 'Код' | 'Наименование'               | 'Ссылка'                     |
			| '1'   | 'Товар (есть размер и цвет)' | 'Товар (есть размер и цвет)' |
		И в таблице "List" я выбираю текущую строку
		Тогда открылось окно 'Номенклатура (создание) *'
		И я нажимаю кнопку выбора у поля с именем "Unit"
		Тогда открылось окно 'Единицы измерения'
		И в таблице "List" я выбираю текущую строку
		Тогда открылось окно 'Номенклатура (создание) *'
		И я нажимаю на кнопку с именем 'FormWriteAndClose'
		И я жду закрытия окна 'Номенклатура (создание) *' в течение 20 секунд
*Закрыть окна клиентского приложения
	И я закрываю все окна клиентского приложения
	
				
		
