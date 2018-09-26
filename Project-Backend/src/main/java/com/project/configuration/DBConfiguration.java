package com.project.configuration;

import java.util.Properties;

import javax.sql.DataSource;

import org.apache.commons.dbcp.BasicDataSource;
import org.hibernate.SessionFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.project.models.Authorities;
import com.project.models.BillingAddress;
import com.project.models.CartItem;
import com.project.models.Category;
import com.project.models.Customer;
import com.project.models.CustomerOrder;
import com.project.models.Product;
import com.project.models.ShippingAddress;
import com.project.models.User;

@Configuration
@EnableTransactionManagement   //commit / rollback
public class DBConfiguration {
//to create beans
	
	@Bean(name="dataSource")
	public DataSource getDataSource() {
		System.out.println("Entering DataSource Bean creation method ");
	    BasicDataSource dataSource = new BasicDataSource();
	    dataSource.setDriverClassName("org.h2.Driver");
	    dataSource.setUrl("jdbc:h2:tcp://localhost/~/project");
	    dataSource.setUsername("neha");
	    dataSource.setPassword("neha");
	    System.out.println("DataSource bean " +dataSource);
	    return dataSource;
	}
	/*
	 * <bean id="sessionFactory" class="org.springframework.orm.hibernate4.LocalSessionFactoryBuilder">
	 * <property name="dataSource" ref="dataSource">
	 */
	@Bean //SessionFactory - factory of session objects
	public SessionFactory sessionFactory() {
		System.out.println("Entering sessionFactory creation method");
		LocalSessionFactoryBuilder lsf=
				new LocalSessionFactoryBuilder(getDataSource());
		Properties hibernateProperties=new Properties();
		hibernateProperties.setProperty(
				"hibernate.dialect", "org.hibernate.dialect.H2Dialect");
		hibernateProperties.setProperty("hibernate.hbm2ddl.auto", "update");
		hibernateProperties.setProperty("hibernate.show_sql", "true");
		lsf.addProperties(hibernateProperties);
		//An array of Class objects of all the entities
		//Map all entities to relational table
		//Class object of an Entity Product
		Class classes[]=new Class[]{Authorities.class,BillingAddress.class,CartItem.class,Category.class,Customer.class,CustomerOrder.class,Product.class,ShippingAddress.class,User.class};
		//localsesionfactorybuilder -> sessionfactory -> map all entities with relation table
		System.out.println("SessionFactory bean " + lsf);
		
	    return lsf.addAnnotatedClasses(classes).buildSessionFactory();
	}
	@Bean
	public HibernateTransactionManager hibTransManagement(){
		return new HibernateTransactionManager(sessionFactory());
	}
}