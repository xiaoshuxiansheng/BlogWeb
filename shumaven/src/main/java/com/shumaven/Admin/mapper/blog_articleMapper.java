package com.shumaven.Admin.mapper;

import java.util.List;
import com.shumaven.Admin.pojo.blog_article;
import com.shumaven.Admin.pojo.blog_articleExample;

public interface blog_articleMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table blog_article
     *
     * @mbg.generated
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table blog_article
     *
     * @mbg.generated
     */
    int insert(blog_article record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table blog_article
     *
     * @mbg.generated
     */
    int insertSelective(blog_article record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table blog_article
     *
     * @mbg.generated
     */
    List<blog_article> selectByExampleWithBLOBs(blog_articleExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table blog_article
     *
     * @mbg.generated
     */
    List<blog_article> selectByExample(blog_articleExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table blog_article
     *
     * @mbg.generated
     */
    blog_article selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table blog_article
     *
     * @mbg.generated
     */
    int updateByPrimaryKeySelective(blog_article record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table blog_article
     *
     * @mbg.generated
     */
    int updateByPrimaryKeyWithBLOBs(blog_article record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table blog_article
     *
     * @mbg.generated
     */
    int updateByPrimaryKey(blog_article record);
}