/**
 * 初始化设备管理详情对话框
 */
var FixAssetInfoDlg = {
    fixAssetInfoData : {}
};

/**
 * 清除数据
 */
FixAssetInfoDlg.clearData = function() {
    this.fixAssetInfoData = {};
}

/**
 * 设置对话框中的数据
 *
 * @param key 数据的名称
 * @param val 数据的具体值
 */
FixAssetInfoDlg.set = function(key, val) {
    this.fixAssetInfoData[key] = (typeof val == "undefined") ? $("#" + key).val() : val;
    return this;
}

/**
 * 设置对话框中的数据
 *
 * @param key 数据的名称
 * @param val 数据的具体值
 */
FixAssetInfoDlg.get = function(key) {
    return $("#" + key).val();
}

/**
 * 关闭此对话框
 */
FixAssetInfoDlg.close = function() {
    parent.layer.close(window.parent.FixAsset.layerIndex);
}

/**
 * 收集数据
 */
FixAssetInfoDlg.collectData = function() {
    this
    .set('id')
    .set('uuid')
    .set('enterpriseNo')
    .set('deviceName')
    .set('deviceModel')
    .set('techniqueTarget')
    .set('manufactor')
    .set('type')
    .set('status')
    .set('charge')
    .set('chargeEmail')
    .set('owner')
    .set('ownerEmail')
    .set('isFix')
    .set('createTime')
    .set('updateTime')
    .set('deviceStatus');
}

/**
 * 提交添加
 */
FixAssetInfoDlg.addSubmit = function() {

    this.clearData();
    this.collectData();

    //提交信息
    var ajax = new $ax(Feng.ctxPath + "/fixAsset/add", function(data){
        Feng.success("添加成功!");
        window.parent.FixAsset.table.refresh();
        FixAssetInfoDlg.close();
    },function(data){
        Feng.error("添加失败!" + data.responseJSON.message + "!");
    });
    ajax.set(this.fixAssetInfoData);
    ajax.start();
}

/**
 * 文件上传
 */
FixAssetInfoDlg.addsSubmit = function() {

    var formData = new FormData($("#fileForm")[0]);
    $.ajax({
        url:Feng.ctxPath + "/fixAsset/adds",
        type:"post",
        processData:false,
        contentType:false,
        data:formData,
        dataType:"json",
        success:function (data) {
            Feng.success("导入成功!");
            window.parent.UserInfo.table.refresh();
            FixAssetInfoDlg.close();},
        error:function (data) {
            Feng.error("导入失败!" + data.responseJSON.message + "!");
        }

    });
}


/**
 * 提交修改
 */
FixAssetInfoDlg.editSubmit = function() {

    this.clearData();
    this.collectData();

    //提交信息
    var ajax = new $ax(Feng.ctxPath + "/fixAsset/update", function(data){
        Feng.success("修改成功!");
        window.parent.FixAsset.table.refresh();
        FixAssetInfoDlg.close();
    },function(data){
        Feng.error("修改失败!" + data.responseJSON.message + "!");
    });
    ajax.set(this.fixAssetInfoData);
    ajax.start();
}

$(function() {

});
