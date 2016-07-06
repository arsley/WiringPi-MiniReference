# templete
# Reference.create(
#   func: '',
#   usage_code: '',
#   usage_description: '',
#   category: 'Initialize', 'GPIO Control', 'I2C', 'Other'
# )

Reference.create(
  func: 'int wiringPiSetup(void)',
  usage_code: 'wiringPiSetup();',
  usage_description:
  'WiringPi方式のピン番号を利用する場合に使用します。<br>'\
  + 'ルート権限での実行が必要です。',
  category: 'Initialize'
)
Reference.create(
  func: 'int wiringPiSetupGpio(void)',
  usage_code: 'wiringPiSetupGpio();',
  usage_description:
  'BCM(Raspberry PiのCPU)のピン番号を利用する場合に使用します。<br>'\
  + 'ルート権限での実行が必要です。',
  category: 'Initialize'
)
Reference.create(
  func: 'int wiringPiSetupPhys(void)',
  usage_code: 'wiringPiSetupPhys();',
  usage_description:
  'Raspberry Piのコネクタ・ピン番号を利用する場合に使用します。<br>'\
  + 'ルート権限での実行が必要です。',
  category: 'Initialize'
)
Reference.create(
  func: 'int wiringPiSetupSys(void)',
  usage_code: 'wiringPiSetupSys();',
  usage_description:
  'BCM(Raspberry PiのCPU)のピン番号を利用する場合に使用します。<br>'\
  + 'ルート権限で実行する必要はありません。',
  category: 'Initialize'
)
Reference.create(
  func: 'void pinMode(int pin, int mode)',
  usage_code: 'wiringPiSetup();<br>pinMode(0, OUTPUT);<br>pinMode(4, INPUT);',
  usage_description:
  '各ピンの動作モードの設定をします。<br>'\
  + '動作モードにはINPUT, OUTPUT, PWM_OUTPUT, GPIO_CLOCKの4種類が指定できます。<br>'\
  + 'それぞれ入力，出力，PWM出力，クロック出力にする設定です。PWM_OUTPUTはGPIO18番ピン，GPIO_CLOCKはGPIO04番ピンのみ設定が可能です。',
  category: 'GPIO Control'
)
Reference.create(
  func: 'void digitalWrite(int pin, int value)',
  usage_code: 'wiringPiSetup();<br>digitalWrite(0, 1);',
  usage_description: '指定したピン(ピン番号)に値を出力します。,<br>'\
  + 'valueに0を指定すればピンの出力は"L"に，1を指定すれば出力は"H"となります。<br>'\
  + 'valueでは0以外は全て1("H")とみなされます。',
  category: 'GPIO Control'
)
Reference.create(
  func: 'int digitalRead(int pin)',
  usage_code: 'wiringPiSetup();<br>data = digitalRead(15);',
  usage_description: '指定したピン(ピン番号)の状態を読み込みます。<br>'\
  + 'ピンが"L"を出力している時は"0"，"H"を出力している時は"1"を返します。',
  category: 'GPIO Control'
)
Reference.create(
  func: 'void pullUpDnControl(int pin, int pud)',
  usage_code: 'wiringPiSetup();<br>pullUpDnControl(0, PUD_UP);',
  usage_description: '指定したピン(ピン番号)に内蔵されているプルダウン，プルアップ抵抗の動作設定をします。<br>'\
  + '設定にはPUD_UP, PUD_DOWN, PUD_OFFの3種類があります。<br>'\
  + 'それぞれプルアップを利用，プルダウンを利用，どちらも利用しない，とするための設定です。',
  category: 'GPIO Control'
)
