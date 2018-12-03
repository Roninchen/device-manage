package com.stylefeng.guns.rest.modular.user.serviceImpl;

import com.stylefeng.guns.api.device.DeviceServiceApi;
import com.stylefeng.guns.rest.modular.es.FixAssetInfo;

import java.util.List;
import java.util.Map;

import org.elasticsearch.index.query.BoolQueryBuilder;
import org.elasticsearch.index.query.QueryBuilders;
import org.elasticsearch.index.query.functionscore.FunctionScoreQueryBuilder;
import org.elasticsearch.index.query.functionscore.ScoreFunctionBuilders;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.elasticsearch.core.ElasticsearchTemplate;
import org.springframework.data.elasticsearch.core.query.NativeSearchQueryBuilder;
import org.springframework.data.elasticsearch.core.query.SearchQuery;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * TODO
 *
 * @author 17262
 * @version V1.0
 * @since 2018-11-30 14:55
 */
@RestController
@RequestMapping("/es")
public class AssetController {

//    @Autowired
//    private AssetRepository assetRepository;
//    @Autowired
//    private DeviceServiceApi deviceServiceApi;
//    @Autowired
//    private ElasticsearchTemplate elasticsearchTemplate;
//
//    @GetMapping("save")
//    public String save(){
//        Map map = deviceServiceApi.getAllFixAsset2AssertInfo();
//        List<FixAssetInfo> fixAssets = (List<FixAssetInfo>) map.get("fixAssets");
//        if (fixAssets.size()>0){
//            assetRepository.saveAll(fixAssets);
//            return "success";
//        }
//        return "false";
//    }
//
//    @GetMapping("delete")
//    public String delete(Integer id){
//        FixAssetInfo fixAssetInfo = new FixAssetInfo();
//        fixAssetInfo.setId(id);
//        assetRepository.delete(fixAssetInfo);
//        return "success";
//    }
//
//    //http://localhost:8888/
//    @GetMapping("update")
//    public String update(FixAssetInfo fixAssetInfo){
//        assetRepository.save(fixAssetInfo);
//        return "success";
//    }
////    //http://localhost:8888/getOne?id=1525417362754
////    @GetMapping("getOne")
////    public FixAssetInfo getOne(Integer id){
////        Optional<FixAssetInfo> byId = assetRepository.findById(id);
////        return byId;
////    }
//
//    //每页数量
//    private Integer PAGESIZE=10;
//
//    //http://localhost:8888/getGoodsList?query=商品
//    //http://localhost:8888/getGoodsList?query=商品&pageNumber=1
//    //根据关键字"商品"去查询列表，name或者description包含的都查询
//    @GetMapping("getGoodsList")
//    public List<FixAssetInfo> getList(Integer pageNumber,String query){
//        if(pageNumber==null) pageNumber = 0;
//        //es搜索默认第一页页码是0
//        SearchQuery searchQuery=getEntitySearchQuery(pageNumber,PAGESIZE,query);
//        Page<FixAssetInfo> goodsPage = assetRepository.search(searchQuery);
//        return goodsPage.getContent();
//    }
//
//
//    private SearchQuery getEntitySearchQuery(int pageNumber, int pageSize, String searchContent) {
////        FunctionScoreQueryBuilder functionScoreQueryBuilder = QueryBuilders.functionScoreQuery()
////            .add(QueryBuilders.matchPhraseQuery("enterpriseNo", searchContent),
////                ScoreFunctionBuilders.weightFactorFunction(100))
////            .add(QueryBuilders.matchPhraseQuery("deviceName", searchContent),
////                ScoreFunctionBuilders.weightFactorFunction(100))
////            //设置权重分 求和模式
////            .scoreMode("sum")
////            //设置权重分最低分
////            .setMinScore(10);
//
//        BoolQueryBuilder queryBuilder = QueryBuilders.boolQuery()
//            .should(QueryBuilders.matchQuery("enterpriseNo", searchContent))
//            .should(QueryBuilders.matchQuery("deviceName",searchContent))
//            .should(QueryBuilders.matchQuery("deviceModel",searchContent))
//            .should(QueryBuilders.matchQuery("techniqueTarget",searchContent))
//            .should(QueryBuilders.matchQuery("owner",searchContent));
//
//        // 设置分页
//        Pageable pageable = new PageRequest(pageNumber, pageSize);
//        return new NativeSearchQueryBuilder()
//            .withPageable(pageable)
//            .withQuery(queryBuilder).build();
//    }

}

