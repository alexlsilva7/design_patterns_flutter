//Singleton é um padrão de design criacional
//que garante que uma classe tenha apenas uma instância
//e também fornece um ponto global de acesso a ela

//Pode levar a um erro de compreenção, pois ao instaciar varias vezes, sempre será a mesma instancia

//Não aconselhado porque dificulta dificulta testes.

class ThemeStore {
  static final ThemeStore _instance = ThemeStore._();
  //Construtor privado
  ThemeStore._();
  factory ThemeStore() => _instance;

  bool _isDark = false;

  bool get isDarkTheme => _isDark;

  switchTheme() {
    _isDark = !_isDark;
  }
}
