// AUTO GENERATED - DO NOT MODIFY
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, inference_failure_on_uninitialized_variable, inference_failure_on_function_return_type, inference_failure_on_untyped_parameter, deprecated_member_use_from_same_package
// coverage:ignore-file

part of 'user.dart';

class _$UserImpl extends User {
  _$UserImpl({
    required this.id,
    required this.name,
    required this.email,
    required this.age,
    required this.phone,
    required this.addresses,
    required this.groups,
  }) : super.ctor();

  @override
  final String id;

  @override
  final String name;

  @override
  final Email email;

  @override
  final int age;

  @override
  final String phone;

  @override
  final List<Address> addresses;

  @override
  final List<String> groups;

  @override
  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'email': email.toJson(),
      'age': age,
      'phone': phone,
      'addresses': <dynamic>[
        for (final Address i0 in addresses) i0.toJson(),
      ],
      'groups': groups,
    };
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is User &&
            runtimeType == other.runtimeType &&
            id == other.id &&
            name == other.name &&
            email == other.email &&
            age == other.age &&
            phone == other.phone &&
            deepEquality(addresses, other.addresses) &&
            deepEquality(groups, other.groups);
  }

  @override
  int get hashCode {
    return Object.hashAll(<Object?>[
      runtimeType,
      id,
      name,
      email,
      age,
      phone,
      addresses,
      groups,
    ]);
  }

  @override
  String toString() {
    String toStringOutput = 'User{<optimized out>}';
    assert(() {
      toStringOutput =
          'User@<$hexIdentity>{id: $id, name: $name, email: $email, age: $age, phone: $phone, addresses: $addresses, groups: $groups}';
      return true;
    }());
    return toStringOutput;
  }

  @override
  Type get runtimeType => User;
}

abstract interface class _UserCopyWithProxy {
  User id(String newValue);

  User name(String newValue);

  $EmailCopyWithProxyChain<User> get email;

  User age(int newValue);

  User phone(String newValue);

  User addresses(List<Address> newValue);

  User groups(List<String> newValue);

  User call({
    final String? id,
    final String? name,
    final Email? email,
    final int? age,
    final String? phone,
    final List<Address>? addresses,
    final List<String>? groups,
  });
}

class _UserCopyWithProxyImpl implements _UserCopyWithProxy {
  _UserCopyWithProxyImpl(this._value);

  final User _value;

  @pragma('vm:prefer-inline')
  @override
  User id(String newValue) => this(id: newValue);

  @pragma('vm:prefer-inline')
  @override
  User name(String newValue) => this(name: newValue);

  @pragma('vm:prefer-inline')
  @override
  $EmailCopyWithProxyChain<User> get email => $EmailCopyWithProxyChain<User>(
      _value.email, (Email update) => this(email: update));

  @pragma('vm:prefer-inline')
  @override
  User age(int newValue) => this(age: newValue);

  @pragma('vm:prefer-inline')
  @override
  User phone(String newValue) => this(phone: newValue);

  @pragma('vm:prefer-inline')
  @override
  User addresses(List<Address> newValue) => this(addresses: newValue);

  @pragma('vm:prefer-inline')
  @override
  User groups(List<String> newValue) => this(groups: newValue);

  @pragma('vm:prefer-inline')
  @override
  User call({
    final String? id,
    final String? name,
    final Email? email,
    final int? age,
    final String? phone,
    final List<Address>? addresses,
    final List<String>? groups,
  }) {
    return _$UserImpl(
      id: id ?? _value.id,
      name: name ?? _value.name,
      email: email ?? _value.email,
      age: age ?? _value.age,
      phone: phone ?? _value.phone,
      addresses: addresses ?? _value.addresses,
      groups: groups ?? _value.groups,
    );
  }
}

sealed class $UserCopyWithProxyChain<$Result> {
  factory $UserCopyWithProxyChain(
          final User value, final $Result Function(User update) chain) =
      _UserCopyWithProxyChainImpl<$Result>;

  $Result id(String newValue);

  $Result name(String newValue);

  $Result email(Email newValue);

  $Result age(int newValue);

  $Result phone(String newValue);

  $Result addresses(List<Address> newValue);

  $Result groups(List<String> newValue);

  $Result call({
    final String? id,
    final String? name,
    final Email? email,
    final int? age,
    final String? phone,
    final List<Address>? addresses,
    final List<String>? groups,
  });
}

class _UserCopyWithProxyChainImpl<$Result>
    implements $UserCopyWithProxyChain<$Result> {
  _UserCopyWithProxyChainImpl(this._value, this._chain);

  final User _value;
  final $Result Function(User update) _chain;

  @pragma('vm:prefer-inline')
  @override
  $Result id(String newValue) => this(id: newValue);

  @pragma('vm:prefer-inline')
  @override
  $Result name(String newValue) => this(name: newValue);

  @pragma('vm:prefer-inline')
  @override
  $Result email(Email newValue) => this(email: newValue);

  @pragma('vm:prefer-inline')
  @override
  $Result age(int newValue) => this(age: newValue);

  @pragma('vm:prefer-inline')
  @override
  $Result phone(String newValue) => this(phone: newValue);

  @pragma('vm:prefer-inline')
  @override
  $Result addresses(List<Address> newValue) => this(addresses: newValue);

  @pragma('vm:prefer-inline')
  @override
  $Result groups(List<String> newValue) => this(groups: newValue);

  @pragma('vm:prefer-inline')
  @override
  $Result call({
    final String? id,
    final String? name,
    final Email? email,
    final int? age,
    final String? phone,
    final List<Address>? addresses,
    final List<String>? groups,
  }) {
    return _chain(_$UserImpl(
      id: id ?? _value.id,
      name: name ?? _value.name,
      email: email ?? _value.email,
      age: age ?? _value.age,
      phone: phone ?? _value.phone,
      addresses: addresses ?? _value.addresses,
      groups: groups ?? _value.groups,
    ));
  }
}

extension $UserExtension on User {
  _UserCopyWithProxy get copyWith => _UserCopyWithProxyImpl(this);
}

class _$AddressImpl extends Address {
  _$AddressImpl({
    required this.street,
    required this.city,
    required this.state,
  }) : super.ctor();

  @override
  final String street;

  @override
  final String city;

  @override
  final String state;

  @override
  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'street': street,
      'city': city,
      'state': state,
    };
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is Address &&
            runtimeType == other.runtimeType &&
            street == other.street &&
            city == other.city &&
            state == other.state;
  }

  @override
  int get hashCode {
    return Object.hashAll(<Object?>[
      runtimeType,
      street,
      city,
      state,
    ]);
  }

  @override
  String toString() {
    String toStringOutput = 'Address{<optimized out>}';
    assert(() {
      toStringOutput =
          'Address@<$hexIdentity>{street: $street, city: $city, state: $state}';
      return true;
    }());
    return toStringOutput;
  }

  @override
  Type get runtimeType => Address;
}

abstract interface class _AddressCopyWithProxy {
  Address street(String newValue);

  Address city(String newValue);

  Address state(String newValue);

  Address call({
    final String? street,
    final String? city,
    final String? state,
  });
}

class _AddressCopyWithProxyImpl implements _AddressCopyWithProxy {
  _AddressCopyWithProxyImpl(this._value);

  final Address _value;

  @pragma('vm:prefer-inline')
  @override
  Address street(String newValue) => this(street: newValue);

  @pragma('vm:prefer-inline')
  @override
  Address city(String newValue) => this(city: newValue);

  @pragma('vm:prefer-inline')
  @override
  Address state(String newValue) => this(state: newValue);

  @pragma('vm:prefer-inline')
  @override
  Address call({
    final String? street,
    final String? city,
    final String? state,
  }) {
    return _$AddressImpl(
      street: street ?? _value.street,
      city: city ?? _value.city,
      state: state ?? _value.state,
    );
  }
}

sealed class $AddressCopyWithProxyChain<$Result> {
  factory $AddressCopyWithProxyChain(
          final Address value, final $Result Function(Address update) chain) =
      _AddressCopyWithProxyChainImpl<$Result>;

  $Result street(String newValue);

  $Result city(String newValue);

  $Result state(String newValue);

  $Result call({
    final String? street,
    final String? city,
    final String? state,
  });
}

class _AddressCopyWithProxyChainImpl<$Result>
    implements $AddressCopyWithProxyChain<$Result> {
  _AddressCopyWithProxyChainImpl(this._value, this._chain);

  final Address _value;
  final $Result Function(Address update) _chain;

  @pragma('vm:prefer-inline')
  @override
  $Result street(String newValue) => this(street: newValue);

  @pragma('vm:prefer-inline')
  @override
  $Result city(String newValue) => this(city: newValue);

  @pragma('vm:prefer-inline')
  @override
  $Result state(String newValue) => this(state: newValue);

  @pragma('vm:prefer-inline')
  @override
  $Result call({
    final String? street,
    final String? city,
    final String? state,
  }) {
    return _chain(_$AddressImpl(
      street: street ?? _value.street,
      city: city ?? _value.city,
      state: state ?? _value.state,
    ));
  }
}

extension $AddressExtension on Address {
  _AddressCopyWithProxy get copyWith => _AddressCopyWithProxyImpl(this);
}

class _$EmailImpl extends Email {
  _$EmailImpl({
    required this.primary,
    this.secondary,
    this.personal,
  }) : super.ctor();

  @override
  final String primary;

  @override
  final String? secondary;

  @override
  final String? personal;

  @override
  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'primary': primary,
      'secondary': secondary,
      'personal': personal,
    };
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is Email &&
            runtimeType == other.runtimeType &&
            primary == other.primary &&
            secondary == other.secondary &&
            personal == other.personal;
  }

  @override
  int get hashCode {
    return Object.hashAll(<Object?>[
      runtimeType,
      primary,
      secondary,
      personal,
    ]);
  }

  @override
  String toString() {
    String toStringOutput = 'Email{<optimized out>}';
    assert(() {
      toStringOutput =
          'Email@<$hexIdentity>{primary: $primary, secondary: $secondary, personal: $personal}';
      return true;
    }());
    return toStringOutput;
  }

  @override
  Type get runtimeType => Email;
}

abstract interface class _EmailCopyWithProxy {
  Email primary(String newValue);

  Email secondary(String? newValue);

  Email personal(String? newValue);

  Email call({
    final String? primary,
    final String? secondary,
    final String? personal,
  });
}

class _EmailCopyWithProxyImpl implements _EmailCopyWithProxy {
  _EmailCopyWithProxyImpl(this._value);

  final Email _value;

  @pragma('vm:prefer-inline')
  @override
  Email primary(String newValue) => this(primary: newValue);

  @pragma('vm:prefer-inline')
  @override
  Email secondary(String? newValue) => this(secondary: newValue);

  @pragma('vm:prefer-inline')
  @override
  Email personal(String? newValue) => this(personal: newValue);

  @pragma('vm:prefer-inline')
  @override
  Email call({
    final String? primary,
    final Object? secondary = const Object(),
    final Object? personal = const Object(),
  }) {
    return _$EmailImpl(
      primary: primary ?? _value.primary,
      secondary: identical(secondary, const Object())
          ? _value.secondary
          : (secondary as String?),
      personal: identical(personal, const Object())
          ? _value.personal
          : (personal as String?),
    );
  }
}

sealed class $EmailCopyWithProxyChain<$Result> {
  factory $EmailCopyWithProxyChain(
          final Email value, final $Result Function(Email update) chain) =
      _EmailCopyWithProxyChainImpl<$Result>;

  $Result primary(String newValue);

  $Result secondary(String? newValue);

  $Result personal(String? newValue);

  $Result call({
    final String? primary,
    final String? secondary,
    final String? personal,
  });
}

class _EmailCopyWithProxyChainImpl<$Result>
    implements $EmailCopyWithProxyChain<$Result> {
  _EmailCopyWithProxyChainImpl(this._value, this._chain);

  final Email _value;
  final $Result Function(Email update) _chain;

  @pragma('vm:prefer-inline')
  @override
  $Result primary(String newValue) => this(primary: newValue);

  @pragma('vm:prefer-inline')
  @override
  $Result secondary(String? newValue) => this(secondary: newValue);

  @pragma('vm:prefer-inline')
  @override
  $Result personal(String? newValue) => this(personal: newValue);

  @pragma('vm:prefer-inline')
  @override
  $Result call({
    final String? primary,
    final Object? secondary = const Object(),
    final Object? personal = const Object(),
  }) {
    return _chain(_$EmailImpl(
      primary: primary ?? _value.primary,
      secondary: identical(secondary, const Object())
          ? _value.secondary
          : (secondary as String?),
      personal: identical(personal, const Object())
          ? _value.personal
          : (personal as String?),
    ));
  }
}

extension $EmailExtension on Email {
  _EmailCopyWithProxy get copyWith => _EmailCopyWithProxyImpl(this);
}
