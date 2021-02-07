# SSF

Speed Scafold Flutter是采用MVVM开发模式设计Flutter应用开发脚手架。使用Route管理、Provide、Page、model结合下快速开发高可用、高性能的应用。

## 文件夹说明
- common 用于存放公共
    - page 存放公共页面
    - widget 存放公共组件
- config 存放配置文件，公共样式、配置
- model 数据模型
- page 页面文件，独立模块一个文件夹
- provide 对应page文件夹，用于逻辑相关和数据相关操作
- pubs 用于存放二次封装插件
- routes 用于路由配置

<center> <h3> Flutter技术使用总结及开发规范说明

​		适用于新手入门Flutter的学习手册及开发规范。本说明书围绕着：**Flutter技术落地使用**、**环境配置及日常开发踩坑总结**、**项目结构规划及实例说明**、**代码规范**、**插件使用规范**、**现有公共组件**和**待改进**等七个方面

## Flutter技术落地使用

​		Flutter是谷歌的移动UI框架，可以快速在iOS和Android上构建高质量的原生用户界面。 Flutter可以与现有的代码一起工作。在全世界，Flutter正在被越来越多的开发者和组织使用，并且Flutter是完全**免费**、**开源**的。

> 本章节将从学习路线、进阶、及未来学习方向等3个方面拓展性总结Flutter技术在实际业务中需要掌握的基本开发能力。

#### 一、学习路线

​		Flutter作为一门新**开源**的移动UI框架，在设计之初，谷歌的工程师就考虑到了开发者在学习Flutter的成本问题，Dart语言与Flutter的结合，获得泛型、class等强类型语言的特性保证了我们开发的应用安全可控，同时Flutter借鉴了FaceBook成熟开源框架React的单向数据绑定的特性，使我们在开发的过程中可以恰到好处的更新和控制我们的页面。

​		通过我们的实际开发使用的经验看，Flutter是一门学习起来十分顺滑的成熟技术框架，下面将推荐一下学习路线让你快速的入门Flutter，构建你想要的应用：

1. ##### 学习Dart语言：

   官网快速入门：Dart 语言开发文档（https://dart.cn/guides）

2. ##### 学习Flutter UI框架：

   - 掌握Widget，在Flutter中，万物皆Widget！Widget作为我们搭建应用的组件，需要至少掌握我们常见的Widget

     | Widget            | 说明                                                         |
     | ----------------- | ------------------------------------------------------------ |
     | Container         | 一个拥有绘制、定位、调整大小的 widget。                      |
     | Row               | 在水平方向上排列子widget的列表。                             |
     | Column            | 在垂直方向上排列子widget的列表。                             |
     | Image             | 一个显示图片的widget                                         |
     | Text              | 单一格式的文本                                               |
     | Icon              | A Material Design icon.                                      |
     | RaisedButton      | Material Design中的button， 一个凸起的材质矩形按钮           |
     | Scaffold          | Material Design布局结构的基本实现。此类提供了用于显示drawer、snackbar和底部sheet的API。 |
     | Appbar            | 一个Material Design应用程序栏，由工具栏和其他可能的widget（如TabBar和FlexibleSpaceBar）组成。 |
     | ListView          | 列表显示                                                     |
     | Icon              | 图标                                                         |
     | Switch            | 单选开关                                                     |
     | Checkbox          | 复选框                                                       |
     | TextField         | 输入框                                                       |
     | Form              | 表单组件                                                     |
     | Flex、Expanded    | 弹性布局                                                     |
     | Wrap              | 流式布局                                                     |
     | Stack、Positioned | 层叠布局，用于页面定位，层叠摆放                             |
     | Align             | 对齐与相对定位                                               |
     | GestureDetector   | 手势识别                                                     |

     > Widget拓展 进阶学习：https://flutter.cn/docs/development/ui/widgets

#### 二、进阶学习：

- 插件使用：https://pub.flutter-io.cn/
- 原生调用：文件操作、拍照、语音、视频播放

#### 四、拓展学习：

- ##### 原生学习：Android、ios开发

  > 即使Flutter已经完成了大部分移动开发需要的Widget，但是还是有一些特殊的用户需求需要我们去实现，既然是跨平台开发，那就离不开原生开发！是的，如果需要深入移动领域，要学习原生！

- ##### 深入学习Flutter运行机制

  	> 学习Flutter运行机制可以帮助我们更好的解决实际开发中的一些问题，譬如：**渲染**、**动画机制**、**数据绑定**、**流**数据处理。
    **学习方法**：读Flutter源码，大量**实践** 、**思考**及**总结**。

## 环境配置及日常开发踩坑总结

1. #### 1.17版本无法连接

2. [Flutter 添加新插件后报The number of method references in a .dex file cannot exceed 64K.](https://juejin.im/post/6844904048034856967)

3. [弹窗键盘弹起影响布局解决方案](https://juejin.im/post/6844904048898867208)

4. [xcode 启动一直在转无法启动 一直卡着菊花在转 解决方案](https://juejin.im/post/6844904056398282766)

5. [listview显示不全的解决办法](https://juejin.im/post/6844904056725438477)

6. [run ios 真机报错一直卡在installing and launching问题诊断及解决办法](https://juejin.im/post/6844904080146432008)

7. [软键盘收起](https://juejin.im/post/6844904118012608520)

8. [dio或http请求阻塞ui，导致页面UI卡顿问题及其解决办法](https://juejin.im/post/6844904158735106061)

9. [FlutterEasyLoading导致No MediaQuery widget found.](https://juejin.im/post/6845166891690885133)

10. [Android studio remove JVM property “https.proxyHost”?](https://juejin.im/post/6857334907060879368)

11. [Error connecting to the service protocol: failed to connect](https://juejin.im/post/6857775588762091533)



## 代码风格

​		好的代码有一个非常重要的特点就是拥有好的风格。一致的命名、一致的顺序、以及一致的格式让代码看起来是一样的。这非常有利于发挥我们视力系统强大的模式匹配能力。如果我们整个 Dart 生态系统中都使用统一的风格，那么这将让我们彼此之间更容易的互相学习和互相贡献。它使我们所有人都可以更容易地学习并为彼此的代码做出贡献。

### 一、命名

> 在 Dart 中标识符有三种类型。
>
> - `UpperCamelCase` 每个单词的首字母都大写，包含第一个单词。
> - `lowerCamelCase` 除了第一个字母始终是小写（即使是缩略词），每个单词的首字母都大写。
> - `lowercase_with_underscores` 只是用小写字母单词，即使是缩略词，并且单词之间使用 `_` 连接。

###### 要使用 `UpperCamelCase` 风格命名类型。

> 每个单词的首字母都大写，包含第一个单词。
>
>  Classes（类名）、 enums（枚举类型）、 typedefs（类型定义）、扩展名（）、以及 type parameters（类型参数）应该把每个单词的首字母都大写（包含第一个单词），不使用分隔符。

```dart
/// 类名
class WodeerProvider {}
class Http {}

/// typedefs
typedef Predicate<T> = bool Function(T value);

/// extensions
extension MyFancyList<T> on List<T> { ... }
extension SmartIterable<T> on Iterable<T> { ... }
```

######  要使用 `lowercase_with_underscores`风格命名类型。

>  小写字母单词，即使是缩略词，并且单词之间使用 `_` 连接。
>
>  命名`库`，`包`，`文件夹`，`源文件`。

```dart
/// 一些文件系统不区分大小写，所以很多项目要求文件名必须是小写字母。使用分隔符这种形式可以保证命名 /// 的可读性。使用下划线作为分隔符可确保名称仍然是有效的Dart标识符。

library peg_parser.source_scanner;

import 'file_system.dart';
import 'slider_menu.dart';
import 'dart:math' as math;
import 'package:angular_components/angular_components'
    as angular_components;
import 'package:js/js.dart' as js;
```

###### 要使用`lowerCamelCase` 风格来命名。

> 除了第一个字母始终是小写（即使是缩略词），每个单词的首字母都大写。
>
> 类成员、顶级定义、变量、参数以及命名参数等 。

```dart
var item;
var pageData;
const wodeerFile;
HttpRequest httpRequest;

void getPageData() {
  print('');
}
```

### 二、顺序

> 为了使文件前面部分保持整洁，我们规定了关键字出现顺序的规则。每个“部分”应该使用空行分割。

顺序如下： `dart:` =>`package:`=>`export`

```dart
import 'dart:async';
import 'dart:html';


import 'package:bar/bar.dart';
import 'package:foo/foo.dart';

import 'foo.dart';
import 'foo/foo.dart';

export 'src/error.dart';
```

### 三、 格式化

> 具有一致的空格风格有助于帮助我们能够用编译器相同的方式理解代码。

1. 要使用 `dartfmt` 格式化你的代码。

   > 在提交代码前，请格式化自己的代码。
   >
   > 在下载dart插件安装后，编辑器支持dart代码格式化。

2. 考虑修改你的代码让格式更友好。

   > ​		无论你扔给格式化程序什么样代码，它都会尽力去处理，但是格式化程序不会创造奇迹。如果代码里有特别长的标识符，深层嵌套的表达式，混合的不同类型运算符等。格式化输出的代码可能任然很难阅读。
   >
   > ​		当有这样的情况发生时，那么就需要重新组织或简化你的代码。考虑缩短局部变量名或者将表达式抽取为一个新的局部变量。换句话说，你应该做一些手动格式化并增加代码的可读性的修改。在工作中应该把 dartfmt 看做一个合作伙伴，在代码的编写和迭代过程中互相协作输出优质的代码。

   ```dart
   /// 抽出相近业务逻辑的模块独立出来
   /// 使用_下划线私有化组件，保证全局代码干净

   class Page extends StatelessWidget {
     @override
     Widget build(BuildContext context) {
       return Scaffold(
         appBar: AppBar(
         	title: Text('我是页面'),
         ),
   			body: ListView(
           children: <Widget>[
             _title(),
             _caseNo(),
             _name(),
             _unit(),
             _content(),
           ],
         ),
       );
     }
   }

   Widget _title() {
     return Container();
   }

   Widget _caseNo() {
     return Container();
   }

   Widget _name() {
     return Container();
   }

   Widget _unit() {
     return Container();
   }

   Widget _content() {
     return Container();
   }
   ```

3.  避免单行超过 80 个字符。

4. 对所有流控制结构使用花括号。

   > 这样可以避免 [dangling else](https://en.wikipedia.org/wiki/Dangling_else)（else悬挂）的问题。

   ```dart
   if (isShow) {
     print('Hello Wodeer !');
   } else {
     print('==.==!');
   }

   /// 例外：一个没有 else 的 if 语句，并且这个 if 语句以及它的执行体适合在一行中实现。在这种情况下，可以不用括号：
   if (arg == null) return defaultValue;

   /// 但是，如果执行体包含下一行，请使用大括号：
   if (overflowChars != other.overflowChars) {
     return overflowChars < other.overflowChars;
   }
   ```



## 项目结构规划及实例说明

###  项目架构

> ​		经过多个项目实战总结，手机端开发采取MVVM模式开发，通过Provider使得页面UI与数据model和数据操作分离实现。
>
> ​		在我们实际开发中，这套模式涵盖了我们大部分的页面开发需求，有效的做到了代码结藕，同时在测试环节中我们可以快速的定位到我们问题所在，有效的提高了开发效率。

​	lib

​	| __ assets 存放icon、page

​	| __ api 存放api配置文件夹

​	| __ config 存放项目基础配置，譬如生产版本、开发版本不同端口域名设置

​	| __ enums 存放枚举项目文件夹

​	| __ models 存放model文件，与page文件一一对应存放

​	| __ providers 存放providerl文件，与page文件一一对应存放

​	| __ page 存放page页面

​			|__ components 存放公共页面，本文件夹只存放同级页面公用的page级文件，独属模块公用										页面在自己页面文件夹中新开components文件夹存放

​	| __ pubs 存放插件文件夹，所有插件原则上需二次改造供业务使用

​	| __ router 路由文件夹

​	| __ utils 公共工具文件夹

​	|__ common 。。。

​			|__  page

​			|__  utils

​			|__  widget

**说明**：

- model、provider、page在文件夹中一一对应。

- 在一些简单（简单的单页面数据展示：详情页）的页面中，我们可以使用简单的原生开发（setstate），不必拘泥于要用provider而用provider导致页面过重，这样就得不偿失。

- 在使用本套开发模式时，请深入了解Flutter的渲染机制、state机制、Provider插件的使用及注意事项。

## 插件使用规范

### 一、使用规范

​		建议所有的第三方插件都进行二次封装后放入pubs文件夹使用，有利于插件版本升级、更换，符合我们开发原则：“一处处理，多处实现”，降低我们的维护成本和开发成本。

### 二、插件汇总

1. ### Provder：数据动态管理插件

   > 熟悉provider是如何调用build方法去通知页面更新，了解context挂载provider实例，如何通过context在element tree中获取到对应的provider实例。

2. ### dio：网络请求插件

   >  熟悉dio基本配置，拦截网络请求做业务处理

3. ### flutter_screenutil：屏幕适配

   > 了解屏幕适配的基本原理，如何调用全局context for root

4. ### shared_preferences：本地持久化

   > 主要应用场景：少量本地化存取，例如：user信息、版信息。大批量、反复调用存取不建议使用。

5. ### mqtt_client：mqtt客户端

6. ### sqflite：数据库

   > 主要应用场景：大批量数据本地化存取，例如：搜索历史、聊天历史等。注意使用是表的开关，以释放内存。

7. ### device_info：设备信息

8. ### cached_network_image：图片缓存

9. ### cached_video_player：视频播放

10. ### wechat_assets_picker：图片视频选择器

    > 仿微信选择图片与视频

11. ### path_provider：设备路径

    > 注意区分临时文件路径和项目文件路径的区别

12. ### permission_handler：权限管理

13. ### isolate： 线程管理使用

    > 在大批量调用渲染和网络请求等“高消耗”的操作下，Flutter Ui视图会造成卡顿现象，这时候要开启一个线程去跑这些操作。在使用isolate过程中注意使用完后关闭isolate并释放掉内存，否则会因内存占用大而导致应用奔溃。

14. ### flutter_sound：音频录取和播放



## 现有公共组件

1. ##### Provider注册组件

   > 二次封装后的provider组件，涵盖了provider注册、监听的功能。

2. ##### 中文化组件

   > 中文化应用处理

3. ##### Screenutil组件

   > 二次分装后的flutter_screenutil组件，简化使用，同时统一全局ui尺寸

4. TimeUtil组件

   > 时间公共组件

5. BlankToolBarModel

   > 用于持有FocusNode的类，使用场景：在列表中含有多个输入框。

## 待改进

1. ##### api请求回来获取到的数据做了多次json.decode操作

   > 在我们项目实际开发中，由于各个页面或模块的业务逻辑需求不同，导致我们从http获取回来的数据进行了多次decode处理，这无形之中浪费了很多性能。

   ```dart
   void main() {

     /// dio默认decode一次，类型为Response
     Future getPageDataApi(Map params) async {
     	String url = '';
     	Response res = await dio.post(url, data: params);
     	return res;
   	}

     /// 页面业务逻辑处理
     Future<void> getPageData() {
       const Map params = {};
       Response res = await getPageDataApi(params);
       PageModel pageData = PageModel.fromJson(res.data['data']);
     }
   }
   ```



2. ##### 启用https

   > 现行推崇使用https请求，使用http后，没有正确的开启http权限，会导致视频、音频延迟或者无法播放的问题。两端同时存在这种问题。

3. ##### 路由表传参数问题，修改路由表

4. ##### 项目规划

5. ##### 文件类型Widget公共组件返回时，需统一model参数

6. ##### 代码注释，文件说明写在类上，参数写在构造函数上