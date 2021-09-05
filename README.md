# SpaceX Launches Search

## :white_check_mark: Requirements
Before starting, you need to have [Git](https://git-scm.com) and [Flutter](https://flutter.dev/) installed.
(Flutter must be on the dev channel, because this app has been developed on that environment).

## Installing the Project
```bash
#clone this project
$ git clone hhtps://github.com/namzug16/...

#go into the directory cloned
$ cd space_x

### in case Flutter is not in the dev channel
$ flutter channel dev
# and then to update the channel 
$ flutter upgrade
# check if everything is ok with flutter
$ flutter doctor -v

# install dependencies
$ flutter pub get

# if some files present errors it might be because of 
# freezed and its generated files, so you would have to do this
$ flutter pub run build_runner build --delete-conflicting-outputs

# at this points the should not be a problem and it is possible to 
# review the code and use the app
$ flutter run

# it is important to say that this app has been 
# only tested on an android emulator

```

## :gear: Architecture
This project is based on MVVM and Repository.

ViewModel in this example is called Controller, so it can be also considered to be some sort of MVC architecture.

**Packages used**
- [riverpod](https://pub.dev/packages/riverpod)
- [flutter_hooks](https://pub.dev/packages/flutter_hooks)
- [freezed](https://pub.dev/packages/freezed)
- [font_awesome_flutter](https://pub.dev/packages/font_awesome_flutter)
- [mocktail](https://pub.dev/packages/mocktail)
- [graphql](https://pub.dev/packages/graphql)

**Models**

The ```Launch``` model is made with freezed so that the == operator and hashCode are 
generated automatically. This could have been used on the ui in case the app needed to verify if an instance of ```Launch``` was 
similar to another one, however in this small example this was not made. This feature of Freezed was actually used on tests.

**Change Notifier vs State Notifier**

It is also possible to use Change Notifier withing riverpod even though it is very simple and easy to use it has some 
problems, for example the repetition of using ```notifyListeners()``` inside every method that should modify the state 
and also how the state can be access and changed anywhere on the app. Due to these problems State Notifier can be used as
an alternative. State Notifier has a determined state when it starts, this state is giving inside the ```super()``` on its constructor
and can be used anywhere on the class by calling ```state```, like so you can modify it and use it with very ease. 

When using 
it with riverpod you need to call a reference of this provider to be able to listen the state in question and there are ,indeed, many 
ways of doing this, however for simplicity and ease of reading I have decided to use hooks, with hooks you can read a provider
by using ```useProvider()``` inside a ```HookWidget```. In the case of a State Notifier Provider you need to read only
the provider to get the state , i.e. ```useProvider(myStateNotifierProvider)``` and if you can to access the methods inside your State Notifier 
you have to use the notifier inside, like this ```useProvider(myStateNotifierProvider.notifier)```.

**States**

The State Notifier I created can have only a certain amount of states, these states are giving by the subclasses of a 
class created with freezed, this is called a union, or in other programing languages like kotlin, sealed classes. 

## Tests

There is only one group of tests which test the controller I have made with riverpod and State Notifier.
Specifically when retrieving data.

Mocktail was used to mock the repository which implements an interface, which the real repository 
implements too.

Then I override the provider of the repository by changing the real repository with the mock repository 
which later on will be tested with the controller.