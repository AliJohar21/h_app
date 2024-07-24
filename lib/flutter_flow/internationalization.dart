import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'ar'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? arText = '',
  }) =>
      [enText, arText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // Create_LogIn
  {
    'bw8fb0cx': {
      'en': 'Hudoor',
      'ar': 'حضور',
    },
    'icx2uq5w': {
      'en': 'Create Account',
      'ar': 'إنشاء حساب',
    },
    's8sa4kwx': {
      'en': 'Create Account',
      'ar': 'إنشاء حساب',
    },
    '4xly87bh': {
      'en': 'Let\'s get started by filling out the form below.',
      'ar': 'لنبدأ بملء النموذج أدناه.',
    },
    'pm2u1ywt': {
      'en': 'First Name',
      'ar': 'الاسم الأول',
    },
    '6b4p8kr1': {
      'en': 'John',
      'ar': 'الاسم الأول',
    },
    'vts6g7i0': {
      'en': 'Last Name',
      'ar': 'اسم العائلة',
    },
    '17ucwen9': {
      'en': ' Doe',
      'ar': 'ظبية',
    },
    'h1uhp217': {
      'en': 'Password',
      'ar': 'كلمة المرور',
    },
    'akqxvv34': {
      'en': 'Password',
      'ar': 'كلمة المرور',
    },
    'eswvdkwt': {
      'en': 'Confirm Password',
      'ar': 'تأكيد كلمة المرور',
    },
    'h7qno9bx': {
      'en': 'Confirm Password',
      'ar': 'تأكيد كلمة المرور',
    },
    '5syr3cyu': {
      'en': 'Phone Number',
      'ar': 'رقم التليفون',
    },
    'lua0kqtl': {
      'en': 'Phone Number',
      'ar': 'رقم التليفون',
    },
    '1gru3x6l': {
      'en': 'Email',
      'ar': 'بريد إلكتروني',
    },
    '1odfrojv': {
      'en': 'XXX@YYY.com',
      'ar': 'XXX@YYY.com',
    },
    '9fpvrndr': {
      'en': 'Male',
      'ar': 'ذكر',
    },
    'xcbu6c07': {
      'en': 'Female',
      'ar': 'أنثى',
    },
    'e6iif7l9': {
      'en': 'University',
      'ar': 'جامعة',
    },
    'e88chpmt': {
      'en': 'University',
      'ar': 'جامعة',
    },
    'ywulv4l6': {
      'en': 'Major',
      'ar': 'رئيسي',
    },
    '0j51m3tp': {
      'en': 'Media',
      'ar': 'وسائط',
    },
    '0febak62': {
      'en': 'Required Hours',
      'ar': 'الساعات المطلوبة',
    },
    'l5gu0ryx': {
      'en': 'Total Required Hours',
      'ar': 'إجمالي الساعات المطلوبة',
    },
    '6hq9jdu2': {
      'en': 'Internship Start Date',
      'ar': 'تاريخ بدء التدريب',
    },
    'll5p1y7o': {
      'en': 'DD/MM/YYYY',
      'ar': 'يوم/شهر/سنة',
    },
    'hntqojgy': {
      'en': 'Internship End Date',
      'ar': 'تاريخ انتهاء التدريب',
    },
    'qq2cnax2': {
      'en': 'DD/MM/YYYY',
      'ar': 'يوم/شهر/سنة',
    },
    'gx0jrrvg': {
      'en': 'Acceptance letter ',
      'ar': 'خطاب القبول',
    },
    'ruucj31t': {
      'en': 'upload file',
      'ar': 'رفع ملف',
    },
    '5p5ddciw': {
      'en': 'Get Started',
      'ar': 'البدء',
    },
    'nq4n5su5': {
      'en': 'Log In',
      'ar': 'تسجيل الدخول',
    },
    'uyyd2wn5': {
      'en': 'Welcome Back',
      'ar': 'مرحبًا بعودتك',
    },
    'odan1a1u': {
      'en': 'Fill out the information below in order to access your account.',
      'ar': 'قم بملء المعلومات أدناه من أجل الوصول إلى حسابك.',
    },
    '52uknmnv': {
      'en': 'Email',
      'ar': 'بريد إلكتروني',
    },
    '39mjpoj0': {
      'en': 'Password',
      'ar': 'كلمة المرور',
    },
    'jpdeg5ga': {
      'en': 'Log In',
      'ar': 'تسجيل الدخول',
    },
    'ihs8zioy': {
      'en': 'Forgot Password?',
      'ar': 'هل نسيت كلمة السر؟',
    },
    '1k1yvle4': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // ClockInOutPage
  {
    '66lg3s78': {
      'en': 'Clock in',
      'ar': 'على مدار الساعة في',
    },
    'bzdzbkh2': {
      'en': 'Clock Out',
      'ar': 'على مدار الساعة من',
    },
    'ze0sf9ev': {
      'en': 'Hudoor Clock ',
      'ar': '',
    },
    'thxu2uzn': {
      'en': 'Clockin',
      'ar': 'على مدار الساعة في',
    },
  },
  // ForgotPasswordPage
  {
    'q2g74yse': {
      'en':
          'We will send you an email with a link to reset your password, please enter the email associated with your account below.',
      'ar':
          'سنرسل إليك بريدًا إلكترونيًا يحتوي على رابط لإعادة تعيين كلمة المرور الخاصة بك، يرجى إدخال البريد الإلكتروني المرتبط بحسابك أدناه.',
    },
    '3et4d6wp': {
      'en': 'Your email address...',
      'ar': 'عنوان بريدك  الإلكتروني...',
    },
    'eai2sta2': {
      'en': 'Enter your email...',
      'ar': 'أدخل بريدك الإلكتروني...',
    },
    'vutagm6g': {
      'en': 'Send Link',
      'ar': 'أرسل الرابط',
    },
    '10paoflr': {
      'en': 'Forgot Password',
      'ar': 'هل نسيت كلمة السر',
    },
    '45xqbj8s': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // ResetPassword_NO
  {
    'c8buxcjl': {
      'en': 'Password',
      'ar': 'كلمة المرور',
    },
    '8bsj392s': {
      'en': 'Password',
      'ar': 'كلمة المرور',
    },
    'zvbklqcu': {
      'en': 'Enter your New Passord',
      'ar': 'أدخل كلمة المرور الجديدة الخاصة بك',
    },
    'px8ros1d': {
      'en': 'Confirm Password',
      'ar': 'تأكيد كلمة المرور',
    },
    '544llhsf': {
      'en': 'Password',
      'ar': 'كلمة المرور',
    },
    '4wuu90ul': {
      'en': 'Confirm Your Password',
      'ar': 'أكد رقمك السري',
    },
    '7ypvijtb': {
      'en': 'Reset',
      'ar': 'إعادة ضبط',
    },
    'u9bdriic': {
      'en': 'Reset Password',
      'ar': 'إعادة تعيين كلمة المرور',
    },
    'onz0g2tq': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // SettingsPage_Unified
  {
    'dbmkttpm': {
      'en': 'My Account settings',
      'ar': 'إعدادات حسابي',
    },
    'huk6eg8c': {
      'en': 'Change Password',
      'ar': 'تغيير كلمة المرور',
    },
    '3z9s8zaq': {
      'en': 'Disable Account',
      'ar': 'تعطيل الحساب',
    },
    'md9lwtxw': {
      'en': 'Preferences',
      'ar': 'التفضيلات',
    },
    't4c9uxnl': {
      'en': 'Language',
      'ar': 'لغة',
    },
    'kp6ijm38': {
      'en': 'English',
      'ar': 'إنجليزي',
    },
    '97h4g3t4': {
      'en': 'Arabic',
      'ar': 'عربي',
    },
    'eobvku8v': {
      'en': 'Select Lang',
      'ar': 'حدد لانج',
    },
    'b8wt1ota': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر...',
    },
    'je3b4385': {
      'en': 'Starting Screen',
      'ar': 'شاشة البداية',
    },
    'oadpcz7l': {
      'en': 'Clock in page',
      'ar': 'الساعة في الصفحة',
    },
    'snyza12x': {
      'en': 'Dashboard page',
      'ar': 'صفحة لوحة القيادة',
    },
    'saci5v7u': {
      'en': 'Profile page',
      'ar': 'الصفحة الشخصية',
    },
    'vcpd0egj': {
      'en': 'Select Page',
      'ar': 'حدد الصفحة',
    },
    '2vfotcdw': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر...',
    },
    'tomqx38x': {
      'en': 'Support',
      'ar': 'يدعم',
    },
    '9tdux5xp': {
      'en': 'Submit a Bug',
      'ar': 'إرسال خطأ',
    },
    '1g6tt0k0': {
      'en': 'Tutorial',
      'ar': 'درس تعليمي',
    },
    'y2ib71wt': {
      'en': '  Settings',
      'ar': 'إعدادات',
    },
    '56kfgkip': {
      'en': '__',
      'ar': '__',
    },
  },
  // admin_profile
  {
    'nxpsqevu': {
      'en': 'Noor Al Mualla',
      'ar': 'نور المعلا',
    },
    'dj7fqiv2': {
      'en': 'EXECUTIVE',
      'ar': 'تنفيذي',
    },
    'ekcx9d6z': {
      'en': 'Training Department',
      'ar': 'قسم التدريب',
    },
    'gho6k7jn': {
      'en': 'SheikhaNoor.AlMualla@SGMB.ae',
      'ar': 'شيخة نور.AlMualla@SGMB.ae',
    },
    '97gcsori': {
      'en': 'Your Account',
      'ar': 'الحساب الخاص بك',
    },
    '44me8lq1': {
      'en': 'Edit Profile',
      'ar': 'تعديل الملف الشخصي',
    },
    'jn0v14av': {
      'en': 'Settings',
      'ar': 'إعدادات',
    },
    '96ti986i': {
      'en': 'Log out',
      'ar': 'تسجيل خروج',
    },
    'a82v280w': {
      'en': 'Notifications',
      'ar': 'إشعارات',
    },
    'gwk0wl22': {
      'en': 'Settings',
      'ar': 'إعدادات',
    },
    'e6r2xsjm': {
      'en': 'profile',
      'ar': 'حساب تعريفي',
    },
  },
  // popupProfile1
  {
    'fk9fa47t': {
      'en': 'Name',
      'ar': 'اسم',
    },
    'qa7q8mvd': {
      'en': 'University:',
      'ar': 'جامعة:',
    },
    'c2804xfc': {
      'en': 'Major:',
      'ar': 'خطاب القبول',
    },
    'd2mizonz': {
      'en': 'Assign Department:',
      'ar': 'خطاب القبول',
    },
    'movs48pc': {
      'en': 'Email:',
      'ar': 'خطاب القبول',
    },
    'scvyh6vi': {
      'en': 'Phone Number:',
      'ar': 'خطاب القبول',
    },
    '9xnhze6t': {
      'en': 'Internship Period:',
      'ar': 'خطاب القبول',
    },
    'rox3v8qr': {
      'en': 'Acceptance Letter:',
      'ar': 'خطاب القبول',
    },
    'phk044u8': {
      'en': 'Accept',
      'ar': '',
    },
    '4pczutpw': {
      'en': 'Reject',
      'ar': '',
    },
    '5kiozevp': {
      'en': 'Option 1',
      'ar': '',
    },
    'upmmmbow': {
      'en': 'Please select...',
      'ar': '',
    },
    '91lsmcdu': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر...',
    },
    '0he68nw9': {
      'en': 'View Image',
      'ar': 'رفع ملف',
    },
    'os0mzofi': {
      'en': 'Home',
      'ar': 'حساب تعريفي',
    },
  },
  // timesheet
  {
    '43csk7pk': {
      'en':
          'Internship Period: From 27-May-2024 to 25-July-2023\nDepartment: IT\nRequired Hours: 240\n',
      'ar': 'خطاب القبول',
    },
    'mw6hfcao': {
      'en': 'Attendance by Period',
      'ar': 'خطاب القبول',
    },
    '4u5sbvpi': {
      'en': 'user',
      'ar': '',
    },
    '1l13t8gk': {
      'en': 'Home',
      'ar': 'حساب تعريفي',
    },
  },
  // dashboard_userside
  {
    's92a3q60': {
      'en': 'Maria Nader',
      'ar': '',
    },
    '80tq63b9': {
      'en': 'IT Multimedia',
      'ar': '',
    },
    'qhwpkzn6': {
      'en': 'Weekly Attendance',
      'ar': 'خطاب القبول',
    },
    '5vd23du4': {
      'en': 'Week 1',
      'ar': '',
    },
    'grgaduei': {
      'en': 'Week 2',
      'ar': '',
    },
    '2k8n6b9w': {
      'en': 'Week 3',
      'ar': '',
    },
    'to6w7k33': {
      'en': 'Week 4',
      'ar': '',
    },
    'qxcs7mlb': {
      'en': 'Week',
      'ar': '',
    },
    'lbveief5': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر...',
    },
    'nvwkds50': {
      'en': 'January',
      'ar': '',
    },
    '2twr15o6': {
      'en': 'February',
      'ar': '',
    },
    'pf8mbdt5': {
      'en': 'March',
      'ar': '',
    },
    '4vxzazft': {
      'en': 'April',
      'ar': '',
    },
    'lskn1ji8': {
      'en': 'May',
      'ar': '',
    },
    'i9gkwrxi': {
      'en': 'June',
      'ar': '',
    },
    'bpu9fjk9': {
      'en': 'July',
      'ar': '',
    },
    '9negp4up': {
      'en': 'August',
      'ar': '',
    },
    'ovd8hd0o': {
      'en': 'September',
      'ar': '',
    },
    'ni12ezml': {
      'en': 'October',
      'ar': '',
    },
    '5xtr9pt1': {
      'en': 'November',
      'ar': '',
    },
    '8ylgkphe': {
      'en': 'December',
      'ar': '',
    },
    '5ugia3mg': {
      'en': 'Month ',
      'ar': '',
    },
    'nhgwq4je': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر...',
    },
    'jqn9k6rs': {
      'en': 'Last 30 Days',
      'ar': '',
    },
    'pjjdgphc': {
      'en': 'Avg. Grade',
      'ar': '',
    },
    'b5fqeyo4': {
      'en': '',
      'ar': '',
    },
    '5yj216e4': {
      'en': 'Days',
      'ar': '',
    },
    '107vo0ri': {
      'en': 'Hours',
      'ar': '',
    },
    'to9fbi0h': {
      'en': '2',
      'ar': '',
    },
    'zscczuwd': {
      'en': 'Present',
      'ar': '',
    },
    'jvo95egr': {
      'en': '1',
      'ar': '',
    },
    'smlu1f7e': {
      'en': 'Late',
      'ar': '',
    },
    'myqerj5g': {
      'en': '0',
      'ar': '',
    },
    '7tiklmw2': {
      'en': 'Hours ',
      'ar': '',
    },
    'yptxb4g2': {
      'en': 'Absent',
      'ar': '',
    },
    'smvt7rcb': {
      'en': '2',
      'ar': '',
    },
    'dh0bu2ox': {
      'en': 'Present',
      'ar': '',
    },
    '5wia8zph': {
      'en': '1',
      'ar': '',
    },
    'bn36jow3': {
      'en': 'Late',
      'ar': '',
    },
    'bm7i9ia0': {
      'en': '0',
      'ar': '',
    },
    'qu51hedg': {
      'en': 'Absent',
      'ar': '',
    },
    'tlibnk5s': {
      'en': 'Hours ',
      'ar': '',
    },
    'h4rp69pb': {
      'en': ' DashBoard',
      'ar': 'حساب تعريفي',
    },
  },
  // calendar
  {
    'jadubsoa': {
      'en': 'Month',
      'ar': '',
    },
    'f2sp5shm': {
      'en': 'Coming Up',
      'ar': '',
    },
    'mkuk5wyw': {
      'en': 'Doctors Check In',
      'ar': '',
    },
    'ud5lf7mh': {
      'en': '2:20pm',
      'ar': '',
    },
    'et46ubr7': {
      'en': 'Wed, 03/08/2022',
      'ar': '',
    },
    'xii6yrf9': {
      'en': 'Past Due',
      'ar': '',
    },
    'm4ffsh97': {
      'en': 'Check In',
      'ar': '',
    },
    '4gbjmsqy': {
      'en': '2:20pm',
      'ar': '',
    },
    '724he3xv': {
      'en': 'Wed, 03/08/2022',
      'ar': '',
    },
    'fqtjt575': {
      'en': 'Week',
      'ar': '',
    },
    'thkd1x37': {
      'en': 'Coming Up',
      'ar': '',
    },
    '2t0qza71': {
      'en': 'Doctors Check In',
      'ar': '',
    },
    '34dcr5l0': {
      'en': '2:20pm',
      'ar': '',
    },
    '4wntcwfb': {
      'en': 'Wed, 03/08/2022',
      'ar': '',
    },
    '0cvikgvv': {
      'en': 'Past Due',
      'ar': '',
    },
    '2x94juwz': {
      'en': 'Check In',
      'ar': '',
    },
    '4vwx6ccv': {
      'en': '2:20pm',
      'ar': '',
    },
    'a4x0nnd6': {
      'en': 'Wed, 03/08/2022',
      'ar': '',
    },
    'yk7164o3': {
      'en': 'Calendar',
      'ar': '',
    },
    'vpnsmm0p': {
      'en': '1',
      'ar': '',
    },
    '1w2tdnpb': {
      'en': 'Home',
      'ar': 'حساب تعريفي',
    },
  },
  // calendarCopy
  {
    'a9x8lsdv': {
      'en': 'Month',
      'ar': '',
    },
    'wi3bj2hy': {
      'en': 'Coming Up',
      'ar': '',
    },
    '5jroo64b': {
      'en': 'Doctors Check In',
      'ar': '',
    },
    '5pk9euc0': {
      'en': '2:20pm',
      'ar': '',
    },
    '4e5gq07m': {
      'en': 'Wed, 03/08/2022',
      'ar': '',
    },
    'fz1k44zi': {
      'en': 'Past Due',
      'ar': '',
    },
    'tgoc49ix': {
      'en': 'Check In',
      'ar': '',
    },
    '7niugp4e': {
      'en': '2:20pm',
      'ar': '',
    },
    'd0ov6rue': {
      'en': 'Wed, 03/08/2022',
      'ar': '',
    },
    '8tft2mxh': {
      'en': 'Week',
      'ar': '',
    },
    'dbb74pav': {
      'en': 'Coming Up',
      'ar': '',
    },
    't4z2kfan': {
      'en': 'Doctors Check In',
      'ar': '',
    },
    'n0cffbvl': {
      'en': '2:20pm',
      'ar': '',
    },
    'q19qzpq9': {
      'en': 'Wed, 03/08/2022',
      'ar': '',
    },
    'ao08d7ga': {
      'en': 'Past Due',
      'ar': '',
    },
    'mths4gbe': {
      'en': 'Check In',
      'ar': '',
    },
    '3iyf1v1m': {
      'en': '2:20pm',
      'ar': '',
    },
    '557u69gy': {
      'en': 'Wed, 03/08/2022',
      'ar': '',
    },
    'uuonzc10': {
      'en': 'Calendar',
      'ar': '',
    },
    'wx13fjev': {
      'en': '1',
      'ar': '',
    },
    '695m3wze': {
      'en': 'Home',
      'ar': 'حساب تعريفي',
    },
  },
  // requestpage
  {
    '3mh31p7n': {
      'en': 'Noor AlMualla',
      'ar': '',
    },
    '8zg4yuff': {
      'en': 'Executive',
      'ar': '',
    },
    'tmu91oxb': {
      'en': 'Search by University...',
      'ar': '',
    },
    '7vnquom7': {
      'en': 'Name',
      'ar': '',
    },
    '62q1n2is': {
      'en': 'University',
      'ar': '',
    },
    'p0y1otk8': {
      'en': 'Major',
      'ar': '',
    },
    'juonecde': {
      'en': 'Name',
      'ar': '',
    },
    'tltxxyv7': {
      'en': 'University',
      'ar': '',
    },
    'n48j7n5g': {
      'en': 'Major',
      'ar': '',
    },
    'rn31kiu4': {
      'en': 'Name',
      'ar': '',
    },
    'mj5qv0ur': {
      'en': 'University',
      'ar': '',
    },
    'wl8gqz7f': {
      'en': 'Major',
      'ar': '',
    },
    'r7ui0djo': {
      'en': 'Name',
      'ar': '',
    },
    'ae7fkutm': {
      'en': 'University',
      'ar': '',
    },
    'ayc9vg2f': {
      'en': 'Major',
      'ar': '',
    },
    '59vssrdy': {
      'en': 'Name',
      'ar': '',
    },
    'vrf97dwu': {
      'en': 'University',
      'ar': '',
    },
    '6t0z4lri': {
      'en': 'Major',
      'ar': '',
    },
    'ehtr7v59': {
      'en': 'Name',
      'ar': '',
    },
    '3us0co5e': {
      'en': 'University',
      'ar': '',
    },
    'vcr7xnfz': {
      'en': 'Major',
      'ar': '',
    },
    'jpr1yfmd': {
      'en': 'Name',
      'ar': '',
    },
    '8nvzp06k': {
      'en': 'University',
      'ar': '',
    },
    '7n3edfuh': {
      'en': 'Major',
      'ar': '',
    },
    'vxm5vwcv': {
      'en': 'Home',
      'ar': 'حساب تعريفي',
    },
  },
  // alyaapage
  {
    't6k5jbpk': {
      'en': 'USER NAME',
      'ar': '',
    },
    'yseh0zy6': {
      'en': 'Required Hours: ',
      'ar': '',
    },
    'wkyaxgiw': {
      'en': 'Department:',
      'ar': '',
    },
    '0hqmyxv8': {
      'en': 'Internship Period: ',
      'ar': '',
    },
    'kj09t2fz': {
      'en': 'Edit account',
      'ar': '',
    },
    '9g7qsvei': {
      'en': 'Select Attendance By Period',
      'ar': '',
    },
    'ujw9wq9m': {
      'en': '2',
      'ar': '',
    },
    'q5qgfxfb': {
      'en': 'Present',
      'ar': '',
    },
    '3i77oh95': {
      'en': '1',
      'ar': '',
    },
    'fncrd06u': {
      'en': 'Late',
      'ar': '',
    },
    'rok59qu0': {
      'en': '0',
      'ar': '',
    },
    '1ak2852x': {
      'en': 'Absent',
      'ar': '',
    },
    'hge2q69f': {
      'en': 'Hours ',
      'ar': '',
    },
    'ff6xhn0u': {
      'en': 'Timesheet',
      'ar': '',
    },
    'y053uav3': {
      'en': 'Home',
      'ar': 'حساب تعريفي',
    },
  },
  // DeleteAccountPage_Unified
  {
    'xx5u4uzn': {
      'en': 'Delete Account',
      'ar': '',
    },
    'qe72bk5q': {
      'en':
          'Are you sure you want to disable your account? This action cannot be undone later.',
      'ar': '',
    },
    'bsg3ypby': {
      'en': 'Delete  Account',
      'ar': '',
    },
    'hlx8hgat': {
      'en': 'Cancel',
      'ar': '',
    },
  },
  // NotificationsPage_Unified
  {
    '6qigqkfs': {
      'en': 'Notification',
      'ar': '',
    },
    '5lcc3ro2': {
      'en':
          'Choose what notifcations you want to recieve below and we will update the settings.',
      'ar': '',
    },
    '8edp1yu5': {
      'en': 'Notify me',
      'ar': '',
    },
    'oygqlayq': {
      'en': 'Tell me when i enter or leave a work location.',
      'ar': '',
    },
    'kx54wzx2': {
      'en': 'Location Services',
      'ar': '',
    },
    'wcgkgydh': {
      'en':
          'Allow us to track your location, this helps keep track of spending and keeps you safe.',
      'ar': '',
    },
    'm9g68958': {
      'en': 'Push Notifications',
      'ar': '',
    },
    'or2hkj3v': {
      'en':
          'Receive Push notifications from our application on a semi regular basis.',
      'ar': '',
    },
    '7zazbvwa': {
      'en': '',
      'ar': 'حساب تعريفي',
    },
  },
  // EditProfilePage_Unified
  {
    'e5632te0': {
      'en': 'Edit Profile',
      'ar': 'خطاب القبول',
    },
    'ywtrmm7t': {
      'en': 'First Name',
      'ar': 'الاسم الأول',
    },
    'pw9aense': {
      'en': 'john',
      'ar': '',
    },
    'k79fxe30': {
      'en': 'Last Name',
      'ar': '',
    },
    'djk3ucvf': {
      'en': ' Doe',
      'ar': '',
    },
    '2m76aivr': {
      'en': 'Email',
      'ar': '',
    },
    'kahs5f25': {
      'en': 'XX@gmail.com',
      'ar': '',
    },
    '2rv16bus': {
      'en': 'Phone Number',
      'ar': '',
    },
    'oth6litw': {
      'en': '050-XXX-XXXX',
      'ar': '',
    },
    'ne8hzpu7': {
      'en': 'University',
      'ar': '',
    },
    'et9d0jyw': {
      'en': 'University of Sharjah',
      'ar': '',
    },
    '0dw035qc': {
      'en': 'Major',
      'ar': '',
    },
    'fuq38vgu': {
      'en': 'Computer Engineering',
      'ar': '',
    },
    'xln6850r': {
      'en': 'Required Hours',
      'ar': '',
    },
    '0p332p66': {
      'en': '240 ',
      'ar': '',
    },
    '13mlrcx4': {
      'en': 'Internship Start Date',
      'ar': '',
    },
    'ikgwpmh4': {
      'en': 'DD/MM/YYYY',
      'ar': '',
    },
    's0c0q1lc': {
      'en': 'Internship End Date',
      'ar': '',
    },
    'gs3q4f6r': {
      'en': 'DD/MM/YYYY',
      'ar': '',
    },
    'xfkz8rnn': {
      'en': 'Update Profile',
      'ar': '',
    },
    '4dggbt6e': {
      'en': 'Home',
      'ar': 'حساب تعريفي',
    },
  },
  // user_profile
  {
    'nsukny0b': {
      'en': 'Abdullah',
      'ar': '',
    },
    'pfoczovv': {
      'en': 'Trainee',
      'ar': '',
    },
    'jjze447m': {
      'en': 'IT-Training Department',
      'ar': '',
    },
    '050auvqf': {
      'en': 'abdullah@SGMB.ae',
      'ar': '',
    },
    '6c3v80q9': {
      'en': 'Your Account',
      'ar': '',
    },
    'ycgv214g': {
      'en': 'Edit Profile',
      'ar': '',
    },
    'e17u8djg': {
      'en': 'Settings',
      'ar': '',
    },
    'fdq52tfx': {
      'en': 'Log out',
      'ar': '',
    },
    'd0rq45x5': {
      'en': 'Notifications',
      'ar': '',
    },
    'p9ov9v93': {
      'en': 'Settings',
      'ar': '',
    },
    'v3u95axs': {
      'en': 'profile',
      'ar': '',
    },
  },
  // ChangePasswordPage
  {
    'wm2ml9sb': {
      'en':
          'We will send you an email with a link to reset your password, please enter the email associated with your account below.',
      'ar': '',
    },
    '5kq3f5re': {
      'en': 'Your email address...',
      'ar': '',
    },
    '63m9o0ql': {
      'en': 'Enter your email...',
      'ar': '',
    },
    '5z9eenou': {
      'en': 'Send Link',
      'ar': '',
    },
    'y54f45ce': {
      'en': 'Change Password',
      'ar': '',
    },
    '27xvj03d': {
      'en': 'Home',
      'ar': '',
    },
  },
  // Miscellaneous
  {
    'li0iwrb9': {
      'en': 'Button',
      'ar': 'زر',
    },
    'sly2ax4z': {
      'en': '',
      'ar': '',
    },
    'cv5qy3s0': {
      'en': '',
      'ar': '',
    },
    '7l19lvzn': {
      'en': '',
      'ar': '',
    },
    '8f9b95ip': {
      'en': '',
      'ar': '',
    },
    'bs48r5v3': {
      'en': '',
      'ar': '',
    },
    'yscrdlyd': {
      'en': '',
      'ar': '',
    },
    'yy270i4i': {
      'en': '',
      'ar': '',
    },
    'w886qgsy': {
      'en': '',
      'ar': '',
    },
    'oyxlqxla': {
      'en': '',
      'ar': '',
    },
    'ka13yawq': {
      'en': '',
      'ar': '',
    },
    'f3xy3eln': {
      'en': '',
      'ar': '',
    },
    'ygebn2l0': {
      'en': '',
      'ar': '',
    },
    'euvox2ie': {
      'en': '',
      'ar': '',
    },
    'fjrb46s6': {
      'en': '',
      'ar': '',
    },
    '5f3n9s38': {
      'en': '',
      'ar': '',
    },
    'pkigsbla': {
      'en': '',
      'ar': '',
    },
    'n5r3ad4o': {
      'en': '',
      'ar': '',
    },
    't8i5rkov': {
      'en': '',
      'ar': '',
    },
    '0uj0gi53': {
      'en': '',
      'ar': '',
    },
    'kvd6917c': {
      'en': '',
      'ar': '',
    },
    'pfp1uiaz': {
      'en': '',
      'ar': '',
    },
    'usa08xje': {
      'en': '',
      'ar': '',
    },
    '9xhznrka': {
      'en': '',
      'ar': '',
    },
    't9tozngb': {
      'en': '',
      'ar': '',
    },
    '5fe6uopw': {
      'en': '',
      'ar': '',
    },
    'cdp7wa5x': {
      'en': '',
      'ar': '',
    },
    'ordyeall': {
      'en': '',
      'ar': '',
    },
  },
].reduce((a, b) => a..addAll(b));
