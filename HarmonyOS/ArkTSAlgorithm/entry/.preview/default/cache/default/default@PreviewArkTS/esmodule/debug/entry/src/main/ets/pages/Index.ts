if (!("finalizeConstruction" in ViewPU.prototype)) {
    Reflect.set(ViewPU.prototype, "finalizeConstruction", () => { });
}
interface Index_Params {
    daffodilsNumberCustomDialogController?: CustomDialogController | null;
    multiplicationTableCustomDialogController?: CustomDialogController | null;
    isPalindromicStringCustomDialogController?: CustomDialogController | null;
    stringReversalCustomDialogController?: CustomDialogController | null;
    isLeapYearCustomDialogController?: CustomDialogController | null;
}
import { CommonConstants } from "@bundle:com.example.arktsalgorithm/entry/ets/common/constants/Constants";
import Logger from "@bundle:com.example.arktsalgorithm/entry/ets/common/utils/Logger";
import { multiplicationTable } from "@bundle:com.example.arktsalgorithm/entry/ets/common/utils/Method";
import { DaffodilsNumberCustomDialog } from "@bundle:com.example.arktsalgorithm/entry/ets/view/DaffodilsNumberCustomDialog";
import { IsLeapYearCustomDialog } from "@bundle:com.example.arktsalgorithm/entry/ets/view/IsLeapYearCustomDialog";
import { IsPalindromicStringCustomDialog } from "@bundle:com.example.arktsalgorithm/entry/ets/view/IsPalindromicStringCustomDialog";
import { MultiplicationTableCustomDialog } from "@bundle:com.example.arktsalgorithm/entry/ets/view/MultiplicationTableCustomDialog";
import { StringReversalCustomDialog } from "@bundle:com.example.arktsalgorithm/entry/ets/view/StringReversalCustomDialog";
class Index extends ViewPU {
    constructor(parent, params, __localStorage, elmtId = -1, paramsLambda = undefined, extraInfo) {
        super(parent, __localStorage, elmtId, extraInfo);
        if (typeof paramsLambda === "function") {
            this.paramsGenerator_ = paramsLambda;
        }
        this.daffodilsNumberCustomDialogController = new CustomDialogController({
            builder: () => {
                let jsDialog = new DaffodilsNumberCustomDialog(this, {}, undefined, -1, () => { }, { page: "entry/src/main/ets/pages/Index.ets", line: 29, col: 14 });
                jsDialog.setController(this.daffodilsNumberCustomDialogController);
                ViewPU.create(jsDialog);
                let paramsLambda = () => {
                    return {};
                };
                jsDialog.paramsGenerator_ = paramsLambda;
            },
            alignment: DialogAlignment.Center,
            offset: { dx: CommonConstants.OFFSET_X, dy: CommonConstants.OFFSET_Y }
        }, this);
        this.multiplicationTableCustomDialogController = new CustomDialogController({
            builder: () => {
                let jsDialog = new MultiplicationTableCustomDialog(this, {}, undefined, -1, () => { }, { page: "entry/src/main/ets/pages/Index.ets", line: 34, col: 14 });
                jsDialog.setController(this.multiplicationTableCustomDialogController);
                ViewPU.create(jsDialog);
                let paramsLambda = () => {
                    return {};
                };
                jsDialog.paramsGenerator_ = paramsLambda;
            },
            alignment: DialogAlignment.Center,
            offset: { dx: CommonConstants.OFFSET_X, dy: CommonConstants.OFFSET_Y }
        }, this);
        this.isPalindromicStringCustomDialogController = new CustomDialogController({
            builder: () => {
                let jsDialog = new IsPalindromicStringCustomDialog(this, {}, undefined, -1, () => { }, { page: "entry/src/main/ets/pages/Index.ets", line: 39, col: 14 });
                jsDialog.setController(this.isPalindromicStringCustomDialogController);
                ViewPU.create(jsDialog);
                let paramsLambda = () => {
                    return {};
                };
                jsDialog.paramsGenerator_ = paramsLambda;
            },
            alignment: DialogAlignment.Center,
            offset: { dx: CommonConstants.OFFSET_X, dy: CommonConstants.OFFSET_Y }
        }, this);
        this.stringReversalCustomDialogController = new CustomDialogController({
            builder: () => {
                let jsDialog = new StringReversalCustomDialog(this, {}, undefined, -1, () => { }, { page: "entry/src/main/ets/pages/Index.ets", line: 44, col: 14 });
                jsDialog.setController(this.stringReversalCustomDialogController);
                ViewPU.create(jsDialog);
                let paramsLambda = () => {
                    return {};
                };
                jsDialog.paramsGenerator_ = paramsLambda;
            },
            alignment: DialogAlignment.Center,
            offset: { dx: CommonConstants.OFFSET_X, dy: CommonConstants.OFFSET_Y }
        }, this);
        this.isLeapYearCustomDialogController = new CustomDialogController({
            builder: () => {
                let jsDialog = new IsLeapYearCustomDialog(this, {}, undefined, -1, () => { }, { page: "entry/src/main/ets/pages/Index.ets", line: 49, col: 14 });
                jsDialog.setController(this.isLeapYearCustomDialogController);
                ViewPU.create(jsDialog);
                let paramsLambda = () => {
                    return {};
                };
                jsDialog.paramsGenerator_ = paramsLambda;
            },
            alignment: DialogAlignment.Center,
            offset: { dx: CommonConstants.OFFSET_X, dy: CommonConstants.OFFSET_Y }
        }, this);
        this.setInitiallyProvidedValue(params);
        this.finalizeConstruction();
    }
    setInitiallyProvidedValue(params: Index_Params) {
        if (params.daffodilsNumberCustomDialogController !== undefined) {
            this.daffodilsNumberCustomDialogController = params.daffodilsNumberCustomDialogController;
        }
        if (params.multiplicationTableCustomDialogController !== undefined) {
            this.multiplicationTableCustomDialogController = params.multiplicationTableCustomDialogController;
        }
        if (params.isPalindromicStringCustomDialogController !== undefined) {
            this.isPalindromicStringCustomDialogController = params.isPalindromicStringCustomDialogController;
        }
        if (params.stringReversalCustomDialogController !== undefined) {
            this.stringReversalCustomDialogController = params.stringReversalCustomDialogController;
        }
        if (params.isLeapYearCustomDialogController !== undefined) {
            this.isLeapYearCustomDialogController = params.isLeapYearCustomDialogController;
        }
    }
    updateStateVars(params: Index_Params) {
    }
    purgeVariableDependenciesOnElmtId(rmElmtId) {
    }
    aboutToBeDeleted() {
        SubscriberManager.Get().delete(this.id__());
        this.aboutToBeDeletedInternal();
    }
    private daffodilsNumberCustomDialogController: CustomDialogController | null;
    private multiplicationTableCustomDialogController: CustomDialogController | null;
    private isPalindromicStringCustomDialogController: CustomDialogController | null;
    private stringReversalCustomDialogController: CustomDialogController | null;
    private isLeapYearCustomDialogController: CustomDialogController | null;
    initialRender() {
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Column.create();
            Column.debugLine("entry/src/main/ets/pages/Index.ets(55:5)", "entry");
            Column.justifyContent(FlexAlign.SpaceBetween);
            Column.width(CommonConstants.PERCENT_FULL);
            Column.height(CommonConstants.PERCENT_FULL);
        }, Column);
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Text.create({ "id": 16777219, "type": 10003, params: [], "bundleName": "com.example.arktsalgorithm", "moduleName": "entry" });
            Text.debugLine("entry/src/main/ets/pages/Index.ets(56:7)", "entry");
            Text.width(CommonConstants.PERCENT_NINETY);
            Text.margin({
                top: { "id": 16777247, "type": 10002, params: [], "bundleName": "com.example.arktsalgorithm", "moduleName": "entry" },
                bottom: { "id": 16777244, "type": 10002, params: [], "bundleName": "com.example.arktsalgorithm", "moduleName": "entry" },
                left: { "id": 16777245, "type": 10002, params: [], "bundleName": "com.example.arktsalgorithm", "moduleName": "entry" },
                right: { "id": 16777246, "type": 10002, params: [], "bundleName": "com.example.arktsalgorithm", "moduleName": "entry" }
            });
            Text.font({ size: { "id": 16777243, "type": 10002, params: [], "bundleName": "com.example.arktsalgorithm", "moduleName": "entry" }, weight: CommonConstants.FONT_WEIGHT_SEVEN_HUNDRED });
        }, Text);
        Text.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Column.create();
            Column.debugLine("entry/src/main/ets/pages/Index.ets(65:7)", "entry");
            Column.width(CommonConstants.PERCENT_FULL);
        }, Column);
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Button.createWithLabel({ "id": 16777220, "type": 10003, params: [], "bundleName": "com.example.arktsalgorithm", "moduleName": "entry" });
            Button.debugLine("entry/src/main/ets/pages/Index.ets(66:9)", "entry");
            Button.width({ "id": 16777236, "type": 10002, params: [], "bundleName": "com.example.arktsalgorithm", "moduleName": "entry" });
            Button.height({ "id": 16777233, "type": 10002, params: [], "bundleName": "com.example.arktsalgorithm", "moduleName": "entry" });
            Button.onClick(() => {
                this.daffodilsNumberCustomDialogController?.open();
            });
        }, Button);
        Button.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Button.createWithLabel({ "id": 16777228, "type": 10003, params: [], "bundleName": "com.example.arktsalgorithm", "moduleName": "entry" });
            Button.debugLine("entry/src/main/ets/pages/Index.ets(72:9)", "entry");
            Button.width({ "id": 16777236, "type": 10002, params: [], "bundleName": "com.example.arktsalgorithm", "moduleName": "entry" });
            Button.height({ "id": 16777233, "type": 10002, params: [], "bundleName": "com.example.arktsalgorithm", "moduleName": "entry" });
            Button.margin({ top: { "id": 16777235, "type": 10002, params: [], "bundleName": "com.example.arktsalgorithm", "moduleName": "entry" } });
            Button.onClick(() => {
                this.multiplicationTableCustomDialogController?.open();
                let result = multiplicationTable();
                for (let index = 0; index < result.length; index++) {
                    Logger.info(result[index].toString());
                }
            });
        }, Button);
        Button.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Button.createWithLabel({ "id": 16777225, "type": 10003, params: [], "bundleName": "com.example.arktsalgorithm", "moduleName": "entry" });
            Button.debugLine("entry/src/main/ets/pages/Index.ets(83:9)", "entry");
            Button.width({ "id": 16777236, "type": 10002, params: [], "bundleName": "com.example.arktsalgorithm", "moduleName": "entry" });
            Button.height({ "id": 16777233, "type": 10002, params: [], "bundleName": "com.example.arktsalgorithm", "moduleName": "entry" });
            Button.margin({ top: { "id": 16777235, "type": 10002, params: [], "bundleName": "com.example.arktsalgorithm", "moduleName": "entry" } });
            Button.onClick(() => {
                this.isPalindromicStringCustomDialogController?.open();
            });
        }, Button);
        Button.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Button.createWithLabel({ "id": 16777230, "type": 10003, params: [], "bundleName": "com.example.arktsalgorithm", "moduleName": "entry" });
            Button.debugLine("entry/src/main/ets/pages/Index.ets(90:9)", "entry");
            Button.width({ "id": 16777236, "type": 10002, params: [], "bundleName": "com.example.arktsalgorithm", "moduleName": "entry" });
            Button.height({ "id": 16777233, "type": 10002, params: [], "bundleName": "com.example.arktsalgorithm", "moduleName": "entry" });
            Button.margin({ top: { "id": 16777235, "type": 10002, params: [], "bundleName": "com.example.arktsalgorithm", "moduleName": "entry" } });
            Button.onClick(() => {
                this.stringReversalCustomDialogController?.open();
            });
        }, Button);
        Button.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Button.createWithLabel({ "id": 16777224, "type": 10003, params: [], "bundleName": "com.example.arktsalgorithm", "moduleName": "entry" });
            Button.debugLine("entry/src/main/ets/pages/Index.ets(97:9)", "entry");
            Button.width({ "id": 16777236, "type": 10002, params: [], "bundleName": "com.example.arktsalgorithm", "moduleName": "entry" });
            Button.height({ "id": 16777233, "type": 10002, params: [], "bundleName": "com.example.arktsalgorithm", "moduleName": "entry" });
            Button.margin({
                top: { "id": 16777235, "type": 10002, params: [], "bundleName": "com.example.arktsalgorithm", "moduleName": "entry" },
                bottom: { "id": 16777234, "type": 10002, params: [], "bundleName": "com.example.arktsalgorithm", "moduleName": "entry" }
            });
            Button.onClick(() => {
                this.isLeapYearCustomDialogController?.open();
            });
        }, Button);
        Button.pop();
        Column.pop();
        Column.pop();
    }
    rerender() {
        this.updateDirtyElements();
    }
    static getEntryName(): string {
        return "Index";
    }
}
registerNamedRoute(() => new Index(undefined, {}), "", { bundleName: "com.example.arktsalgorithm", moduleName: "entry", pagePath: "pages/Index", pageFullPath: "entry/src/main/ets/pages/Index", integratedHsp: "false", moduleType: "followWithHap" });
