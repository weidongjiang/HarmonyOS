if (!("finalizeConstruction" in ViewPU.prototype)) {
    Reflect.set(ViewPU.prototype, "finalizeConstruction", () => { });
}
interface LoginBottom_Params {
    account?: string;
    password?: string;
}
interface LoginTitle_Params {
}
interface LoginPage_Params {
    currentDeviceSize?: string;
}
import CommonConstants from "@bundle:com.huawei.logindemo/entry/ets/common/constants/CommonConstants";
import StyleConstants from "@bundle:com.huawei.logindemo/entry/ets/common/constants/StyleConstants";
import CommonUtils from "@bundle:com.huawei.logindemo/entry/ets/common/utils/CommonUtils";
import MultipleDevicesUtils from "@bundle:com.huawei.logindemo/entry/ets/common/utils/MultipleDevicesUtils";
/**
 * The login page consists of two components.
 * LoginTitle and LoginBottom, which can be invoked by directly referencing the control.
 */
class Dog {
    name: String = "dog";
    sleep() {
        console.log('test log:' + 'dog sleep');
    }
}
class Cat {
    name: String = 'cat';
    back() {
        console.log('test log:' + 'cat back');
    }
}
function factorial(n: number): number {
    if (n < 1) {
        return 1;
    }
    return n * factorial(n - 1);
}
type Animal = Dog | Cat | number;
function foo(anim: Animal) {
    if (anim instanceof Dog) {
        anim.sleep();
        return;
    }
    if (anim instanceof Cat) {
        anim.back();
        return;
    }
    console.log('test log:' + anim.toString());
}
function test1() {
    /// 变量
    let ha: string = 'hello';
    /// 常量
    const he: String = 'he';
    let a: number = factorial(20);
    /// 超长数字
    let bigInt: bigint = BigInt('9999999999999999999999999999999999999999999');
    let abc: String = "adb ";
    /// 模板字面量
    let abccd = `这是 ${abc}`;
    console.log('test log:' + bigInt.toString());
    console.log('test log:' + abccd);
    let array: String[] = ['a', 'b', 'c'];
    console.log('test log:' + array);
    /// 联合类型
    let anim: Animal = new Dog();
    console.log('test log:' + anim.name);
    anim = 100;
    console.log('test log:' + anim);
    anim = new Cat();
    console.log('test log:' + anim.name);
    foo(new Dog());
    foo(new Cat());
    foo(99);
    console.log('test log:' + '====');
    for (let index = 0; index < ha.length; index++) {
        const element = ha[index];
        console.log('test log:' + element);
    }
    console.log('test log:' + '====');
    for (let obj of 'asdfghjkl') {
        console.log('test log:' + obj);
    }
    abctest('kkk');
    abctest(33);
    let jack = new Person();
    // 假设代码中没有对name赋值，例如调用"jack.setName('Jack')"
    jack.setName('Jack');
    jack.getName().length; // 运行时异常：name is undefined
    console.log('test log:' + jack.name);
    /// 键值对
    let map: Record<string, number> = {
        'Jack': 330000000,
        'KL': 50
    };
    let num = map['KL'];
    console.log('test log: KL is ' + num.toString());
    console.log('test log: jack is ' + map['Jack'].toString());
}
/// 函数重载
function abctest(a: String): void;
function abctest(a: number): void;
function abctest(a: String | number): void {
    console.log('test log:' + a);
}
class Person {
    name: string = ''; // undefined
    setName(n: string): void {
        this.name = n;
    }
    getName(): string {
        // 开发者使用"string"作为返回类型，这隐藏了name可能为"undefined"的事实。
        // 更合适的做法是将返回类型标注为"string | undefined"，以告诉开发者这个API所有可能的返回值。
        return this.name;
    }
}
class LoginPage extends ViewPU {
    constructor(parent, params, __localStorage, elmtId = -1, paramsLambda = undefined, extraInfo) {
        super(parent, __localStorage, elmtId, extraInfo);
        if (typeof paramsLambda === "function") {
            this.paramsGenerator_ = paramsLambda;
        }
        this.__currentDeviceSize = this.createStorageProp('currentDeviceSize', CommonConstants.SM, "currentDeviceSize");
        this.setInitiallyProvidedValue(params);
        this.finalizeConstruction();
    }
    setInitiallyProvidedValue(params: LoginPage_Params) {
    }
    updateStateVars(params: LoginPage_Params) {
    }
    purgeVariableDependenciesOnElmtId(rmElmtId) {
        this.__currentDeviceSize.purgeDependencyOnElmtId(rmElmtId);
    }
    aboutToBeDeleted() {
        this.__currentDeviceSize.aboutToBeDeleted();
        SubscriberManager.Get().delete(this.id__());
        this.aboutToBeDeletedInternal();
    }
    private __currentDeviceSize: ObservedPropertyAbstractPU<string>;
    get currentDeviceSize() {
        return this.__currentDeviceSize.get();
    }
    set currentDeviceSize(newValue: string) {
        this.__currentDeviceSize.set(newValue);
    }
    onPageShow() {
        MultipleDevicesUtils.register();
    }
    initialRender() {
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            GridRow.create({
                columns: {
                    sm: StyleConstants.COLUMNS_SM,
                    md: StyleConstants.COLUMNS_MD,
                    lg: StyleConstants.COLUMNS_LG
                },
                gutter: {
                    x: StyleConstants.GRID_GUTTER
                }
            });
            GridRow.backgroundColor({ "id": 16777280, "type": 10001, params: [], "bundleName": "com.huawei.logindemo", "moduleName": "entry" });
        }, GridRow);
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            GridCol.create({
                span: {
                    sm: StyleConstants.SPAN_SM,
                    md: StyleConstants.SPAN_MD,
                    lg: StyleConstants.SPAN_LG
                }, offset: {
                    md: StyleConstants.OFFSET_MD,
                    lg: StyleConstants.OFFSET_LG
                }
            });
        }, GridCol);
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Column.create();
        }, Column);
        {
            this.observeComponentCreation2((elmtId, isInitialRender) => {
                if (isInitialRender) {
                    let componentCall = new 
                    // Title component
                    LoginTitle(this, {}, undefined, elmtId, () => { }, { page: "entry/src/main/ets/pages/LoginPage.ets", line: 182, col: 11 });
                    ViewPU.create(componentCall);
                    let paramsLambda = () => {
                        return {};
                    };
                    componentCall.paramsGenerator_ = paramsLambda;
                }
                else {
                    this.updateStateVarsOfChildByElmtId(elmtId, {});
                }
            }, { name: "LoginTitle" });
        }
        {
            this.observeComponentCreation2((elmtId, isInitialRender) => {
                if (isInitialRender) {
                    let componentCall = new 
                    // Bottom component
                    LoginBottom(this, {}, undefined, elmtId, () => { }, { page: "entry/src/main/ets/pages/LoginPage.ets", line: 184, col: 11 });
                    ViewPU.create(componentCall);
                    let paramsLambda = () => {
                        return {};
                    };
                    componentCall.paramsGenerator_ = paramsLambda;
                }
                else {
                    this.updateStateVarsOfChildByElmtId(elmtId, {});
                }
            }, { name: "LoginBottom" });
        }
        Column.pop();
        GridCol.pop();
        GridRow.pop();
    }
    rerender() {
        this.updateDirtyElements();
    }
    static getEntryName(): string {
        return "LoginPage";
    }
}
class LoginTitle extends ViewPU {
    constructor(parent, params, __localStorage, elmtId = -1, paramsLambda = undefined, extraInfo) {
        super(parent, __localStorage, elmtId, extraInfo);
        if (typeof paramsLambda === "function") {
            this.paramsGenerator_ = paramsLambda;
        }
        this.setInitiallyProvidedValue(params);
        this.finalizeConstruction();
    }
    setInitiallyProvidedValue(params: LoginTitle_Params) {
    }
    updateStateVars(params: LoginTitle_Params) {
    }
    purgeVariableDependenciesOnElmtId(rmElmtId) {
    }
    aboutToBeDeleted() {
        SubscriberManager.Get().delete(this.id__());
        this.aboutToBeDeletedInternal();
    }
    initialRender() {
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Column.create();
            Column.backgroundColor({ "id": 16777280, "type": 10001, params: [], "bundleName": "com.huawei.logindemo", "moduleName": "entry" });
            Column.justifyContent(FlexAlign.Center);
            Column.width(StyleConstants.FULL_PARENT);
            Column.height(StyleConstants.LOGIN_LOGO_HEIGHT);
        }, Column);
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Image.create({ "id": 16777389, "type": 20000, params: [], "bundleName": "com.huawei.logindemo", "moduleName": "entry" });
            Image.width({ "id": 16777330, "type": 10002, params: [], "bundleName": "com.huawei.logindemo", "moduleName": "entry" });
            Image.height({ "id": 16777330, "type": 10002, params: [], "bundleName": "com.huawei.logindemo", "moduleName": "entry" });
            Image.margin({ bottom: { "id": 16777331, "type": 10002, params: [], "bundleName": "com.huawei.logindemo", "moduleName": "entry" } });
        }, Image);
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Text.create({ "id": 16777233, "type": 10003, params: [], "bundleName": "com.huawei.logindemo", "moduleName": "entry" });
            Text.fontSize({ "id": 16777300, "type": 10002, params: [], "bundleName": "com.huawei.logindemo", "moduleName": "entry" });
            Text.fontWeight(FontWeight.Medium);
            Text.fontColor({ "id": 16777293, "type": 10001, params: [], "bundleName": "com.huawei.logindemo", "moduleName": "entry" });
        }, Text);
        Text.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Text.create({ "id": 16777232, "type": 10003, params: [], "bundleName": "com.huawei.logindemo", "moduleName": "entry" });
            Text.fontSize({ "id": 16777348, "type": 10002, params: [], "bundleName": "com.huawei.logindemo", "moduleName": "entry" });
            Text.fontColor({ "id": 16777290, "type": 10001, params: [], "bundleName": "com.huawei.logindemo", "moduleName": "entry" });
            Text.margin({
                top: { "id": 16777347, "type": 10002, params: [], "bundleName": "com.huawei.logindemo", "moduleName": "entry" },
                bottom: { "id": 16777346, "type": 10002, params: [], "bundleName": "com.huawei.logindemo", "moduleName": "entry" }
            });
        }, Text);
        Text.pop();
        Column.pop();
    }
    rerender() {
        this.updateDirtyElements();
    }
}
class LoginBottom extends ViewPU {
    constructor(parent, params, __localStorage, elmtId = -1, paramsLambda = undefined, extraInfo) {
        super(parent, __localStorage, elmtId, extraInfo);
        if (typeof paramsLambda === "function") {
            this.paramsGenerator_ = paramsLambda;
        }
        this.__account = new ObservedPropertySimplePU('', this, "account");
        this.__password = new ObservedPropertySimplePU('', this, "password");
        this.setInitiallyProvidedValue(params);
        this.finalizeConstruction();
    }
    setInitiallyProvidedValue(params: LoginBottom_Params) {
        if (params.account !== undefined) {
            this.account = params.account;
        }
        if (params.password !== undefined) {
            this.password = params.password;
        }
    }
    updateStateVars(params: LoginBottom_Params) {
    }
    purgeVariableDependenciesOnElmtId(rmElmtId) {
        this.__account.purgeDependencyOnElmtId(rmElmtId);
        this.__password.purgeDependencyOnElmtId(rmElmtId);
    }
    aboutToBeDeleted() {
        this.__account.aboutToBeDeleted();
        this.__password.aboutToBeDeleted();
        SubscriberManager.Get().delete(this.id__());
        this.aboutToBeDeletedInternal();
    }
    private __account: ObservedPropertySimplePU<string>;
    get account() {
        return this.__account.get();
    }
    set account(newValue: string) {
        this.__account.set(newValue);
    }
    private __password: ObservedPropertySimplePU<string>;
    get password() {
        return this.__password.get();
    }
    set password(newValue: string) {
        this.__password.set(newValue);
    }
    initialRender() {
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Column.create();
            Column.padding({
                left: { "id": 16777325, "type": 10002, params: [], "bundleName": "com.huawei.logindemo", "moduleName": "entry" },
                right: { "id": 16777326, "type": 10002, params: [], "bundleName": "com.huawei.logindemo", "moduleName": "entry" },
            });
            Column.backgroundColor({ "id": 16777280, "type": 10001, params: [], "bundleName": "com.huawei.logindemo", "moduleName": "entry" });
            Column.height(StyleConstants.LOGIN_BOTTOM_HEIGHT);
        }, Column);
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Column.create();
            Column.backgroundColor(Color.White);
            Column.borderRadius({ "id": 16777329, "type": 10002, params: [], "bundleName": "com.huawei.logindemo", "moduleName": "entry" });
        }, Column);
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            TextInput.create({ placeholder: { "id": 16777220, "type": 10003, params: [], "bundleName": "com.huawei.logindemo", "moduleName": "entry" } });
            TextInput.maxLength(StyleConstants.INPUT_ACCOUNT_LENGTH);
            TextInput.type(InputType.Number);
            __TextInput__inputStyle();
            TextInput.onChange((value: string) => {
                this.account = value;
            });
        }, TextInput);
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Line.create();
            Line.width(StyleConstants.FULL_PARENT);
            Line.height({ "id": 16777315, "type": 10002, params: [], "bundleName": "com.huawei.logindemo", "moduleName": "entry" });
            Line.margin({
                left: { "id": 16777316, "type": 10002, params: [], "bundleName": "com.huawei.logindemo", "moduleName": "entry" },
                right: { "id": 16777317, "type": 10002, params: [], "bundleName": "com.huawei.logindemo", "moduleName": "entry" }
            });
            Line.backgroundColor({ "id": 16777284, "type": 10001, params: [], "bundleName": "com.huawei.logindemo", "moduleName": "entry" });
        }, Line);
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            TextInput.create({ placeholder: { "id": 16777274, "type": 10003, params: [], "bundleName": "com.huawei.logindemo", "moduleName": "entry" } });
            TextInput.maxLength(StyleConstants.INPUT_PASSWORD_LENGTH);
            TextInput.type(InputType.Password);
            __TextInput__inputStyle();
            TextInput.onChange((value: string) => {
                this.password = value;
            });
        }, TextInput);
        Column.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Row.create();
            Row.justifyContent(FlexAlign.SpaceBetween);
            Row.width(StyleConstants.FULL_PARENT);
            Row.margin({ top: { "id": 16777301, "type": 10002, params: [], "bundleName": "com.huawei.logindemo", "moduleName": "entry" } });
            Row.padding({
                left: { "id": 16777302, "type": 10002, params: [], "bundleName": "com.huawei.logindemo", "moduleName": "entry" },
                right: { "id": 16777303, "type": 10002, params: [], "bundleName": "com.huawei.logindemo", "moduleName": "entry" }
            });
        }, Row);
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Text.create({ "id": 16777242, "type": 10003, params: [], "bundleName": "com.huawei.logindemo", "moduleName": "entry" });
            __Text__blueTextStyle();
            Text.onClick(() => {
                CommonUtils.showToastContent({ "id": 16777230, "type": 10003, params: [], "bundleName": "com.huawei.logindemo", "moduleName": "entry" });
            });
        }, Text);
        Text.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Text.create({ "id": 16777225, "type": 10003, params: [], "bundleName": "com.huawei.logindemo", "moduleName": "entry" });
            __Text__blueTextStyle();
            Text.onClick(() => {
                CommonUtils.showToastContent({ "id": 16777230, "type": 10003, params: [], "bundleName": "com.huawei.logindemo", "moduleName": "entry" });
            });
        }, Text);
        Text.pop();
        Row.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Button.createWithLabel({ "id": 16777231, "type": 10003, params: [], "bundleName": "com.huawei.logindemo", "moduleName": "entry" });
            Button.id(CommonConstants.LOGIN_BUTTON_ID);
            Button.width(StyleConstants.FULL_PARENT);
            Button.height({ "id": 16777324, "type": 10002, params: [], "bundleName": "com.huawei.logindemo", "moduleName": "entry" });
            Button.fontSize({ "id": 16777348, "type": 10002, params: [], "bundleName": "com.huawei.logindemo", "moduleName": "entry" });
            Button.fontWeight(FontWeight.Medium);
            Button.backgroundColor({ "id": 16777285, "type": 10001, params: [], "bundleName": "com.huawei.logindemo", "moduleName": "entry" });
            Button.margin({
                top: { "id": 16777327, "type": 10002, params: [], "bundleName": "com.huawei.logindemo", "moduleName": "entry" },
                bottom: { "id": 16777323, "type": 10002, params: [], "bundleName": "com.huawei.logindemo", "moduleName": "entry" }
            });
            Button.onClick(() => {
                CommonUtils.loginArkTS(this.account, this.password);
                test1();
            });
        }, Button);
        Button.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Text.create({ "id": 16777278, "type": 10003, params: [], "bundleName": "com.huawei.logindemo", "moduleName": "entry" });
            Text.fontColor({ "id": 16777281, "type": 10001, params: [], "bundleName": "com.huawei.logindemo", "moduleName": "entry" });
            Text.fontSize({ "id": 16777348, "type": 10002, params: [], "bundleName": "com.huawei.logindemo", "moduleName": "entry" });
            Text.fontWeight(FontWeight.Medium);
            Text.onClick(() => {
                CommonUtils.showToastContent({ "id": 16777230, "type": 10003, params: [], "bundleName": "com.huawei.logindemo", "moduleName": "entry" });
            });
        }, Text);
        Text.pop();
        Column.pop();
    }
    rerender() {
        this.updateDirtyElements();
    }
}
function __TextInput__inputStyle(): void {
    TextInput.placeholderColor({ "id": 16777291, "type": 10001, params: [], "bundleName": "com.huawei.logindemo", "moduleName": "entry" });
    TextInput.height({ "id": 16777328, "type": 10002, params: [], "bundleName": "com.huawei.logindemo", "moduleName": "entry" });
    TextInput.fontSize({ "id": 16777348, "type": 10002, params: [], "bundleName": "com.huawei.logindemo", "moduleName": "entry" });
    TextInput.backgroundColor(Color.White);
    TextInput.margin({ top: { "id": 16777313, "type": 10002, params: [], "bundleName": "com.huawei.logindemo", "moduleName": "entry" } });
    TextInput.padding({ left: StyleConstants.INPUT_PADDING_LEFT });
}
function __Text__blueTextStyle(): void {
    Text.fontColor({ "id": 16777281, "type": 10001, params: [], "bundleName": "com.huawei.logindemo", "moduleName": "entry" });
    Text.fontSize({ "id": 16777349, "type": 10002, params: [], "bundleName": "com.huawei.logindemo", "moduleName": "entry" });
    Text.fontWeight(FontWeight.Medium);
}
registerNamedRoute(() => new LoginPage(undefined, {}), "", { bundleName: "com.huawei.logindemo", moduleName: "entry", pagePath: "pages/LoginPage", pageFullPath: "entry/src/main/ets/pages/LoginPage", integratedHsp: "false", moduleType: "followWithHap" });
