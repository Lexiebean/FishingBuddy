-- Version : Russian ( by Maus )


FishingTranslations["ruRU"] = {
   NAME = "Fishing Buddy",
   DESCRIPTION1 = "Отслеживает какую рыбу и где вы поймали",
   DESCRIPTION2 = "и помогает управлять вашим рыболовским снарежением.",
   DESCRIPTION = "#DESCRIPTION1# #DESCRIPTION2#",

   ID = "FishingBuddy",

   WINDOW_TITLE = "#NAME# вер. #VERSION#",
   FISHINGTEXTURE = "Interface\\Icons\\Trade_Fishing",

   -- Tab labels and tooltips
   LOCATIONS_INFO = "Отображает информацию о расположении рыбы",
   LOCATIONS_TAB = "Располож",
   OUTFITS_INFO = "Выбрать что снарядить во время рыбалки",
   OUTFITS_TAB = "Снаряжение",
   OPTIONS_INFO = "Настройки #NAME#",
   OPTIONS_TAB = "Настройки",
   TRACKING_INFO = "Отображает #NAME# информацию о рыбе",
   TRACKING_TAB = "Отслеживание",

   POINT = "очко",
   POINTS = "очков",

   RAW = "сырой",
   FISH = "Рыба",

   BOBBER_NAME = "Поплавок",
   FISHINGSKILL = "Рыбная ловля",
   HELP = "help",
   SWITCH = "switch",
   IMPORT = "import",
   TRACK = "track",
   NOTRACK = "notrack",
   TRACKING = "tracking",
   UPDATEDB = "updatedb",
   FORCE = "force",

   SCHOOL = "косяк",  -- e.g. 'Oily Blackmouth School'
   FLOATING_WRECKAGE = "Плавающие обломки",
   FLOATING_DEBRIS = "Плавающий мусор",
   ELEM_WATER = "Первородная вода",
   OIL_SPILL = "Нефтяное пятно",

   ADD = "add",
   REPLACE = "replace",
   UPDATE = "update",
   CURRENT = "current",
   RESET = "reset",
   CLEANUP = "cleanup",
   CHECK = "check",
   NOW = "now",

   NOREALM = "неизвестный сервер",

   WATCHER = "watcher",
   WATCHER_LOCK = "lock",
   WATCHER_UNLOCK = "unlock",

   UNKNOWN = "Unknown",
   WEEKLY = "weekly",
   HOURLY = "hourly",

   OFFSET_LABEL_TEXT = "Смещение:";

   KEYS_LABEL_TEXT = "Клавиша:",
   KEYS_NONE_TEXT = "Нету",
   KEYS_SHIFT_TEXT = "Shift",
   KEYS_CTRL_TEXT = "Control",
   KEYS_ALT_TEXT = "Alt",

   SHOWFISHIES = "Рыба",
   SHOWFISHIES_INFO = "Показать весь ваш улов, сгруппированный по названию рыбы.",

   SHOWLOCATIONS = "Локации",
   SHOWLOCATIONS_INFO = "Показать весь ваш улов, отсортированно по зоне ловли.",

   SWITCHOUTFIT = "Переключение",
   SWITCHOUTFIT_INFO = "Переключение между снаряжением для рыбной ловли и тем, что было надето на вас раньше.",

   -- Option names and tooltips
   CONFIG_SHOWNEWFISHIES_ONOFF   = "Новая рыба",
   CONFIG_SHOWNEWFISHIES_INFO    = "Выводит сообщение в окно чата, когда вы поймали новую рыбы в текущем месте.",
   CONFIG_FISHWATCH_ONOFF        = "Наблюдатель",
   CONFIG_FISHWATCH_INFO	 	 = "Отображать текстовый фрейм с информацией о пойманных рыбках в текущем месте.",
   CONFIG_FISHWATCHONLY_ONOFF    = "Только во время рыбалки",
   CONFIG_FISHWATCHONLY_INFO	 = "Наблюдатель будет активен только во время рыбалки",
   CONFIG_FISHWATCHSKILL_ONOFF   = "Текущий навык",
   CONFIG_FISHWATCHSKILL_INFO	 = "Показывать текущий уровень навыка и его модификаторы.",
   CONFIG_FISHWATCHZONE_ONOFF    = "Текущая зона",
   CONFIG_FISHWATCHZONE_INFO	 = "Показывать текущую локацию.",
   CONFIG_FISHWATCHPERCENT_ONOFF = "В процентах",
   CONFIG_FISHWATCHPERCENT_INFO	 = "Отображать проценты для каждой рыбки в наблюдателе.",
   CONFIG_SUITUPFIRST_ONOFF      = "Одежда для успеха",
   CONFIG_SUITUPFIRST_INFO       = "Положите на рыбное снаряжение, если вы не используете его когда нажата клавиша связывания.",
   CONFIG_EASYCAST_ONOFF	 = "Простая ловля",
   CONFIG_EASYCAST_INFO		 = "Если активно, то когда ваша удочка надета и кликните пкм, вы забросите удочку.",
   CONFIG_EASYLURES_ONOFF	 = "Авто-наживка",
   CONFIG_EASYLURES_INFO	 = "Наживка будет автоматически применяться к вашей удочке, если это необходимо, конечно.",
   CONFIG_ONLYMINE_ONOFF	 = "Одеть только удочку",
   CONFIG_ONLYMINE_INFO		 = "Если включено, во время простой ловли будет проверяться ваше снаряжение только на наличие удочки.",
   CONFIG_MOUSEFISHING_ONOFF	 = "Рыбалка мышкой",
   CONFIG_MOUSEFISHING_INFO	     = "Если активно, лкм забросить удочку, пкм выудить.",
   CONFIG_SHOWLOCATIONZONES_ONOFF	= "Зоны",
   CONFIG_SHOWLOCATIONZONES_INFO	= "Показывать зоны и подзоны.",
   CONFIG_SORTBYPERCENT_ONOFF	= "Сорт по улову",
   CONFIG_SORTBYPERCENT_INFO	= "Упорядочить информацию об улове по его количеству, а не по алфавиту.",
   CONFIG_STVTIMER_ONOFF		= "Рыболовный таймер Рыбомании",
   CONFIG_STVTIMER_INFO		= "Если включено, отображает обратный отсчет времени до начал Рыбомании и обратный отсчет после.",
   CONFIG_STVPOOLSONLY_ONOFF	= "Забрасывать только в водоёмы",
   CONFIG_STVPOOLSONLY_INFO	= "Простая ловля будет применяться только тогда, когда курсор находится над водоёмом.",
   CONFIG_USEBUTTONHOLE_ONOFF	= "Use ButtonHole",
   CONFIG_USEBUTTONHOLE_INFO	= "If enabled, the ButtonHole addon will control the minimap button. Takes effect on the next login.",
   CONFIG_USEGATHERER_ONOFF	= "Использовать Gatherer",
   CONFIG_USEGATHERER_INFO	= "Если активно, #NAME# известит о рыбной лунке.",

   CONFIG_SKILL_INFO		= "Общий бонус к навыку от снаряжения.",
   CONFIG_SKILL_TEXT		= "Рыбалка ",
   CONFIG_STYLISH_INFO		= "Style points loosely inspired by Draznar's Fishing FAQ in the WoW forums.",
   CONFIG_STYLISH_TEXT		= "Style: ",

   CONFIG_OUTFITTER_TEXT      = "Бонус от снарежения: %s\r\nСчет (в стиле Draznar'а): %d ",

   CLICKTOSWITCH_ONOFF	        = "Клик для смени набора",
   CLICKTOSWITCH_INFO	        = "Левый клик будет переключать выбранный набор экипировки, вместо того, чтобы открывать главное окно #NAME#.",

   LEFTCLICKTODRAG = "[Левый-клик] - перемещение",
   RIGHTCLICKFORMENU = "[Правый-клик] - меню",
   WATCHERCLICKHELP = "#LEFTCLICKTODRAG#\n#RIGHTCLICKFORMENU#",

   MINIMAPBUTTONPLACEMENT = "Размещение",
   MINIMAPBUTTONPLACEMENTTOOLTIP = "Позволяет перемещать иконку #NAME# у мини-карты",
   CONFIG_MINIMAPBUTTON_ONOFF	= "Иконка у мини карты",
   CONFIG_MINIMAPBUTTON_INFO	= "Показывать иконку #NAME# у мини карте.",

   CONFIG_ENHANCESOUNDS_ONOFF      = "Повысить громкость",
   CONFIG_ENHANCESOUNDS_INFO       = "Во время рыбалки, #NAME# увеличит громкость звука до максимума и уменьшит громкость звука окружающей среды до минимума.",

   TRACKINGFRAME = "Tracking Frame",
   TRACKINGFRAME_RIGHTCLICK = "Right-click to draw graphs for fish",
   TRACKINGFRAME_LEFTCLICK = "Left-click to choose fish to track",
-- TRACKINGFRAME_CLICKS = "#TRACKINGFRAME_RIGHTCLICK#\r#TRACKINGFRAME_LEFTCLICK#",
   TRACKINGFRAME_CLICKS = "#TRACKINGFRAME_RIGHTCLICK#",

   TRACKFISHHOURLY = "Track this fish hourly",
   TRACKFISHWEEKLY = "Track this fish weekly",
   HIDEINWATCHER = "Display this fish in the watcher",

   -- messages
   COMPATIBLE_SWITCHER = "Не найдено подходящего снаряжения.",
   TOOMANYFISHERMEN = "У вас установлен другой аддон для простой ловли.",
   FAILEDINIT = "Инициализация выполнена с ошибками.",
   IMPORTMSG = "Imported '%s' database.",
   NOIMPORTMSG = "No Impp, DataFish, or FishInfo2 databases found.",
   ADDFISHIEMSG = "добавлено: %s, к локации %s.",
   ADDSCHOOLMSG = "добавлено: '%s', к локации %s.",
   CURSORBUSYMSG = "Couldn't switch because the cursor is busy!",
   NOOUTFITDEFINED = "You don't have any items in your fishing outfit.",
   NODATAMSG = "Не обнаружено данных.",
   TRACKINGMSG = "Tracking '%s' %s.",
   NOTRACKERRMSG = "Can't remove default cycle fish.",
   NOTRACKMSG = "Removed cycle fish '%s'.",
   POLEALREADYEQUIPPED = "You're already equipped for fishing.",
   CANTSWITCHBACK = "You've already removed your fishing equipment.",
   CLEANUP_NONEMSG = "Старых настроек не обнаружено.",
   CLEANUP_WILLMSG = "Обнаружены старые настройки для |c#RED#%s|r: %s.",
   CLEANUP_DONEMSG = "Старые настройки удалены для |c#RED#%s|r: %s.",
   CLEANUP_NOOLDMSG = "Не обнаружено старых настроек у игрока |c#GREEN#%s|r.",
   NONEAVAILABLE_MSG = "Недоступно",
   UPDATEDB_MSG = "Обновлено название рыбы: %d.",

   MINIMUMSKILL = "Минимальный навык: %d",
   NOTLINKABLE = "<Создание ссылки невозможно>",
   CAUGHTTHISMANY = "Поймано %d",
   CAUGHTTHISTOTAL = "Всего %d",
   FISHTYPES = "Типы рыб: %d",

   DASH = " -- ",
   FISHCAUGHT = "%d %s",
   TIMETOGO = "Начало Рыбомании через %d:%02d",
   TIMELEFT = "Конец Рыбомании через %d:%02d",
   FATLADYSINGS = "|c#RED#Окончание Рыбомании|r (осталось %d:%02d)",
   RIGGLE_BASSBAIT = "^Риггл Мормыш .*: .*! (.*) .*!$",

   STVZONENAME = "Тернистая долина",

   TOOLTIP_HINT = "Cовет:",
   TOOLTIP_HINTSWITCH = "кликните, чтобы переключить набор снаряжения",
   TOOLTIP_HINTTOGGLE = "кликните, чтобы открыть окно #NAME#.",

   -- months for Tracking frame
   ABBREV_JANUARY = "Янв",
   ABBREV_APRIL = "Апр",
   ABBREV_JULY = "Ию",
   ABBREV_OCTOBER = "Окт",
   ABBREV_DECEMBER = "Дек",

   -- Key binding support
   BINDING_HEADER_FISHINGBUDDY_BINDINGS = "#NAME#",
   BINDING_NAME_FISHINGBUDDY_TOGGLE = "Переключение окна #NAME#",
   BINDING_NAME_FISHINGBUDDY_SWITCH = "Переключение наборов снаряжения",
   BINDING_NAME_FISHINGBUDDY_GOFISHING = "Экипироваться и начать рыбалку",

   BINDING_NAME_TOGGLEFISHINGBUDDY_LOC = "Переключение окна локаций #NAME#",
   BINDING_NAME_TOGGLEFISHINGBUDDY_OUT = "Переключение окна снаряжения #NAME#",
   BINDING_NAME_TOGGLEFISHINGBUDDY_TRK = "Переключение окна отслеживания #NAME#",
   BINDING_NAME_TOGGLEFISHINGBUDDY_OPT = "Переключение окна опций #NAME#",
};

FishingTranslations["ruRU"].IMPORT_HELP = {
      "|c#GREEN#/fb #IMPORT#|r",
      "    Import Impp's fishinfo or FishInfo2 data.",
};
FishingTranslations["ruRU"].SWITCH_HELP = {
      "|c#GREEN#/fb #SWITCH#|r",
      "    переключение между набора снаряжения (если доступны OutfitDisplayFrame или Outfitter)",
};
FishingTranslations["ruRU"].WATCHER_HELP = {
      "|c#GREEN#/fb #WATCHER#|r [|c#GREEN##WATCHER_LOCK#|r or |c#GREEN##WATCHER_UNLOCK#|r or |c#GREEN##RESET#|r]",
      "    unlock - разблокировать окно наблюдателя для его перемещения,",
      "    lock - блокировать, reset - установить позицию по-умолчанию",
};
FishingTranslations["ruRU"].CURRENT_HELP = {
   "|c#GREEN#/fb #CURRENT# #RESET#|r",
   "    Сбросить количество пойманной рыбы в этой сессии.",
};
FishingTranslations["ruRU"].UPDATEDB_HELP = {
   "|c#GREEN#/fb #UPDATEDB# [#FORCE#]|r",
   "    Попробовать найти названия рыб, которые ещё не известны #NAME#.",
   "    Во время поиска не проверяются 'редкие' рыбы, которые могут",
   "    привести к отключения от сервера -- используйте опцию '#FORCE#' для их принудительной проверки.",
};
FishingTranslations["ruRU"].CLEANUP_HELP = {
      "|c#GREEN#/fb #CLEANUP#|r [|c#GREEN#f#CHECK#|r or |c#GREEN##NOW#|r]",
      "    Очистка старых настроек. |c#GREEN##CHECK#|r - выдать список настроек,",
      "    которые будут удалены опцией |c#GREEN##NOW#|r.",
};
FishingTranslations["ruRU"].TRACKING_HELP = {
      "|c#GREEN#/fb #TRACK#|r [|c#GREEN##HOURLY#|r or |c#GREEN##WEEKLY#|r] |c#PURPLE#<fish link>|r",
      "    track the catch times for the specified fish (a shift click link)",
      "|c#GREEN#/fb #NOTRACK#|r |c#PURPLE#<fish link>|r",
      "    remove the specified fish (a shift click link) from the tracker",
      "|c#GREEN#/fb #TRACKING#|r",
      "    a really bad display of when tracked fish were caught",
};

FishingTranslations["ruRU"].PRE_HELP = {
      "You can use |c#GREEN#/fishingbuddy|r or |c#GREEN#/fb|r for all commands",
      "|c#GREEN#/fb|r: переключение главного окна Fishing Buddy",
      "|c#GREEN#/fb #HELP#|r: показать это сообщение",
};
FishingTranslations["ruRU"].POST_HELP = {
      "Вы можете назначить клавиши для аддона в окне \"Назначение клавиш\"",
};

