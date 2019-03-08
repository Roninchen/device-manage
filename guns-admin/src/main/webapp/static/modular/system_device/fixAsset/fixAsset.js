/**
 * 设备管理初始化
 */
var FixAsset = {
    id: "FixAssetTable",	//表格id
    seItem: null,		//选中的条目
    table: null,
    layerIndex: -1
};

/**
 * 初始化表格的列
 */
FixAsset.initColumn = function () {
    return [
        {field: 'selectItem', radio: true},
            {title: '企业编号', field: 'enterprise_no', visible: true, align: 'center', valign: 'middle'},
            {title: '名称', field: 'device_name', visible: true, align: 'center', valign: 'middle'},
            {title: '型号', field: 'device_model', visible: true, align: 'center', valign: 'middle'},
            {title: '技术指标', field: 'technique_target', visible: true, align: 'center', valign: 'middle'},
            {title: '国别厂家', field: 'manufactor', visible: true, align: 'center', valign: 'middle'},
            {title: '分类名称', field: 'type', visible: true, align: 'center', valign: 'middle'},
            {title: '出厂编号', field: 'manufact_no', visible: true, align: 'center', valign: 'middle'},
            {title: '有效日期', field: 'valid_date', visible: true, align: 'center', valign: 'middle'},
            {title: '检定结果', field: 'appraisal', visible: true, align: 'center', valign: 'middle'},
            {title: '管理状态', field: 'status', visible: true, align: 'center', valign: 'middle'},
            {title: '负责人', field: 'charge', visible: true, align: 'center', valign: 'middle'},
            {title: '使用部门', field: 'charge_department', visible: true, align: 'center', valign: 'middle'}

    ];
};

/**
 * 检查是否选中
 */
FixAsset.check = function () {
    var selected = $('#' + this.id).bootstrapTable('getSelections');
    if(selected.length == 0){
        Feng.info("请先选中表格中的某一记录！");
        return false;
    }else{
        FixAsset.seItem = selected[0];
        return true;
    }
};

/**
 * 点击添加设备
 */
FixAsset.openAddFixAsset = function () {
    var index = layer.open({
        type: 2,
        title: '添加设备',
        area: ['900px', '520px'], //宽高
        fix: false, //不固定
        maxmin: true,
        content: Feng.ctxPath + '/fixAsset/fixAsset_add'
    });
    this.layerIndex = index;
};

/**
 * 点击批量导入设备
 */
FixAsset.openAddFixAssets = function () {
    var index = layer.open({
        type: 2,
        title: '批量导入',
        area: ['400px', '280px'], //宽高
        fix: false, //不固定
        maxmin: true,
        content: Feng.ctxPath + '/fixAsset/fixAsset_adds'
    });
    this.layerIndex = index;
};

/**
 * 打开查看设备详情
 */
FixAsset.openFixAssetDetail = function () {
    if (this.check()) {
        var index = layer.open({
            type: 2,
            title: '设备详情',
            area: ['800px', '420px'], //宽高
            fix: false, //不固定
            maxmin: true,
            content: Feng.ctxPath + '/fixAsset/fixAsset_update/' + FixAsset.seItem.id
        });
        this.layerIndex = index;
    }
};

/**
 * 删除设备
 */
FixAsset.delete = function () {
    if (this.check()) {
        var ajax = new $ax(Feng.ctxPath + "/fixAsset/delete", function (data) {
            Feng.success("删除成功!");
            FixAsset.table.refresh();
        }, function (data) {
            Feng.error("删除失败!" + data.responseJSON.message + "!");
        });
        ajax.set("fixAssetId",this.seItem.id);
        ajax.start();
    }
};

/**
 * 查询设备列表
 */
FixAsset.search = function () {
    var queryData = {};
    queryData['condition'] = $("#condition").val();
    FixAsset.table.refresh({query: queryData});
};

$(function () {
    var defaultColunms = FixAsset.initColumn();
    var table = new BSTable(FixAsset.id, "/fixAsset/list", defaultColunms);
    table.setPaginationType("client");
    FixAsset.table = table.init();
});
