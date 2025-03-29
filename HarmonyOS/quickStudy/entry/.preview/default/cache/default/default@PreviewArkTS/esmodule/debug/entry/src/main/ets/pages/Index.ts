if (!("finalizeConstruction" in ViewPU.prototype)) {
    Reflect.set(ViewPU.prototype, "finalizeConstruction", () => { });
}
interface Banner_Params {
    bannerList?: Array<BannerClass>;
}
interface Index_Params {
    message?: string;
}
class BannerClass {
    id: string = '';
    imageSrc: ResourceStr = '';
    url: string = '';
    constructor(id: string, imageSrc: ResourceStr, url: string) {
        this.id = id;
        this.imageSrc = imageSrc;
        this.url = url;
    }
}
class Index extends ViewPU {
    constructor(parent, params, __localStorage, elmtId = -1, paramsLambda = undefined, extraInfo) {
        super(parent, __localStorage, elmtId, extraInfo);
        if (typeof paramsLambda === "function") {
            this.paramsGenerator_ = paramsLambda;
        }
        this.__message = new ObservedPropertySimplePU('快速入门', this, "message");
        this.setInitiallyProvidedValue(params);
        this.finalizeConstruction();
    }
    setInitiallyProvidedValue(params: Index_Params) {
        if (params.message !== undefined) {
            this.message = params.message;
        }
    }
    updateStateVars(params: Index_Params) {
    }
    purgeVariableDependenciesOnElmtId(rmElmtId) {
        this.__message.purgeDependencyOnElmtId(rmElmtId);
    }
    aboutToBeDeleted() {
        this.__message.aboutToBeDeleted();
        SubscriberManager.Get().delete(this.id__());
        this.aboutToBeDeletedInternal();
    }
    private __message: ObservedPropertySimplePU<string>;
    get message() {
        return this.__message.get();
    }
    set message(newValue: string) {
        this.__message.set(newValue);
    }
    initialRender() {
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Column.create();
            Column.debugLine("entry/src/main/ets/pages/Index.ets(19:5)", "entry");
            Column.width('100%');
            Column.height('100%');
            Column.backgroundColor('#F1F3F5');
        }, Column);
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Text.create(this.message);
            Text.debugLine("entry/src/main/ets/pages/Index.ets(20:7)", "entry");
            Text.fontSize(24);
            Text.fontWeight(700);
            Text.width('100%');
            Text.textAlign(TextAlign.Start);
            Text.padding({ left: 16 });
            Text.fontFamily('HarmonyHeiTi-Bold');
            Text.lineHeight(33);
        }, Text);
        Text.pop();
        {
            this.observeComponentCreation2((elmtId, isInitialRender) => {
                if (isInitialRender) {
                    let componentCall = new Banner(this, {}, undefined, elmtId, () => { }, { page: "entry/src/main/ets/pages/Index.ets", line: 28, col: 7 });
                    ViewPU.create(componentCall);
                    let paramsLambda = () => {
                        return {};
                    };
                    componentCall.paramsGenerator_ = paramsLambda;
                }
                else {
                    this.updateStateVarsOfChildByElmtId(elmtId, {});
                }
            }, { name: "Banner" });
        }
        Column.pop();
    }
    rerender() {
        this.updateDirtyElements();
    }
    static getEntryName(): string {
        return "Index";
    }
}
class Banner extends ViewPU {
    constructor(parent, params, __localStorage, elmtId = -1, paramsLambda = undefined, extraInfo) {
        super(parent, __localStorage, elmtId, extraInfo);
        if (typeof paramsLambda === "function") {
            this.paramsGenerator_ = paramsLambda;
        }
        this.__bannerList = new ObservedPropertyObjectPU([
            new BannerClass('pic0', { "id": 16777231, "type": 20000, params: [], "bundleName": "com.huawei.quickstart", "moduleName": "entry" }, 'https://developer.huawei.com/consumer/cn/training/course/video/C101718352529709527'),
            new BannerClass('pic1', { "id": 16777220, "type": 20000, params: [], "bundleName": "com.huawei.quickstart", "moduleName": "entry" }, 'https://developer.huawei.com/consumer/cn/'),
            new BannerClass('pic2', { "id": 16777233, "type": 20000, params: [], "bundleName": "com.huawei.quickstart", "moduleName": "entry" }, 'https://developer.huawei.com/consumer/cn/deveco-studio/'),
            new BannerClass('pic3', { "id": 16777232, "type": 20000, params: [], "bundleName": "com.huawei.quickstart", "moduleName": "entry" }, 'https://developer.huawei.com/consumer/cn/arkts/'),
            new BannerClass('pic4', { "id": 16777228, "type": 20000, params: [], "bundleName": "com.huawei.quickstart", "moduleName": "entry" }, 'https://developer.huawei.com/consumer/cn/arkui/'),
            new BannerClass('pic5', { "id": 16777219, "type": 20000, params: [], "bundleName": "com.huawei.quickstart", "moduleName": "entry" }, 'https://developer.huawei.com/consumer/cn/sdk')
        ], this, "bannerList");
        this.setInitiallyProvidedValue(params);
        this.finalizeConstruction();
    }
    setInitiallyProvidedValue(params: Banner_Params) {
        if (params.bannerList !== undefined) {
            this.bannerList = params.bannerList;
        }
    }
    updateStateVars(params: Banner_Params) {
    }
    purgeVariableDependenciesOnElmtId(rmElmtId) {
        this.__bannerList.purgeDependencyOnElmtId(rmElmtId);
    }
    aboutToBeDeleted() {
        this.__bannerList.aboutToBeDeleted();
        SubscriberManager.Get().delete(this.id__());
        this.aboutToBeDeletedInternal();
    }
    private __bannerList: ObservedPropertyObjectPU<Array<BannerClass>>;
    get bannerList() {
        return this.__bannerList.get();
    }
    set bannerList(newValue: Array<BannerClass>) {
        this.__bannerList.set(newValue);
    }
    initialRender() {
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Swiper.create();
            Swiper.debugLine("entry/src/main/ets/pages/Index.ets(55:5)", "entry");
            Swiper.autoPlay(true);
            Swiper.loop(true);
            Swiper.indicator(new DotIndicator()
                .color('#1a000000')
                .selectedColor('#0A59F7'));
        }, Swiper);
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            ForEach.create();
            const forEachItemGenFunction = (_item, index: number) => {
                const item = _item;
                this.observeComponentCreation2((elmtId, isInitialRender) => {
                    Image.create(item.imageSrc);
                    Image.debugLine("entry/src/main/ets/pages/Index.ets(57:9)", "entry");
                    Image.objectFit(ImageFit.Contain);
                    Image.width('100%');
                    Image.padding({ top: 11, left: 16, right: 16 });
                    Image.borderRadius(16);
                }, Image);
            };
            this.forEachUpdateFunction(elmtId, this.bannerList, forEachItemGenFunction, (item: BannerClass, index: number) => item.id, true, true);
        }, ForEach);
        ForEach.pop();
        Swiper.pop();
    }
    rerender() {
        this.updateDirtyElements();
    }
}
if (getPreviewComponentFlag()) {
    storePreviewComponents(1, "Banner", new Banner(undefined, {}));
    previewComponent();
}
else {
    registerNamedRoute(() => new Index(undefined, {}), "", { bundleName: "com.huawei.quickstart", moduleName: "entry", pagePath: "pages/Index", pageFullPath: "entry/src/main/ets/pages/Index", integratedHsp: "false", moduleType: "followWithHap" });
}
