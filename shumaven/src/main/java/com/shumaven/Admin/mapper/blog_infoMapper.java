package com.shumaven.Admin.mapper;

import java.util.List;
import com.shumaven.Admin.pojo.blog_info;
import com.shumaven.Admin.pojo.blog_infoExample;

public interface blog_infoMapper {

	/**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table blog_info
     *
     * @mbg.generated
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table blog_info
     *
     * @mbg.generated
     */
    int insert(blog_info record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table blog_info
     *
     * @mbg.generated
     */
    int insertSelective(blog_info record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table blog_info
     *
     * @mbg.generated
     */
    List<blog_info> selectByExample(blog_infoExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table blog_info
     *
     * @mbg.generated
     */
    blog_info selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table blog_info
     *
     * @mbg.generated
     */
    int updateByPrimaryKeySelective(blog_info record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table blog_info
     *
     * @mbg.generated
     */
    int updateByPrimaryKey(blog_info record);
    
    //获取最新版本号
    blog_info getNewUpdate();
}