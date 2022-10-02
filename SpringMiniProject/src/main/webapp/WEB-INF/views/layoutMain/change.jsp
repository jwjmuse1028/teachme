<?xml version="1.0" encoding="UTF-8"?>
<beans:beans xmlns="http://www.springframework.org/schema/mvc"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xmlns:beans="http://www.springframework.org/schema/beans"
	xmlns:context="http://www.springframework.org/schema/context"
	xsi:schemaLocation="http://www.springframework.org/schema/mvc https://www.springframework.org/schema/mvc/spring-mvc.xsd
		http://www.springframework.org/schema/beans https://www.springframework.org/schema/beans/spring-beans.xsd
		http://www.springframework.org/schema/context https://www.springframework.org/schema/context/spring-context.xsd">

	<!-- DispatcherServlet Context: defines this servlet's request-processing infrastructure -->
	
	<!-- Enables the Spring MVC @Controller programming model -->
	<annotation-driven />

	<!-- Handles HTTP GET requests for /resources/** by efficiently serving up static resources in the ${webappRoot}/resources directory -->
	<resources mapping="/resources/**" location="/resources/" />
<!--	<resources mapping="/upload/**" location="/resources/upload/" />-->
	<resources mapping="/upload/**" location="/resources/upload/" />
	<resources mapping="/image/**" location="/resources/image/" />
	<resources mapping="/css/**" location="/resources/css/" />
	<resources mapping="/js/**" location="/resources/javascript/" />


<!--	 Resolves views selected for rendering by @Controllers to .jsp resources in the /WEB-INF/views directory-->

	<resources mapping="/scss/**" location="/resources/scss/" />
	<resources mapping="/font/**" location="/resources/font/" />
	<!-- Resolves views selected for rendering by @Controllers to .jsp resources in the /WEB-INF/views directory -->

<!--	 <beans:bean class="org.springframework.web.servlet.view.InternalResourceViewResolver">-->
<!--		<beans:property name="prefix" value="/WEB-INF/views/" />-->
<!--		<beans:property name="suffix" value=".jsp" />-->
<!--	</beans:bean>-->
		
	<!-- file upload setting -->
	<beans:bean id="multipartResolver" class="org.springframework.web.multipart.commons.CommonsMultipartResolver">
		<beans:property name="maxUploadSize" value="5000000"/>	
		<beans:property name="defaultEncoding" value="utf-8"/>	
	</beans:bean>
	
	<!-- Tiles Resolver -->
	<beans:bean id="tilesConfigurer" class="org.springframework.web.servlet.view.tiles3.TilesConfigurer">
		<beans:property name="definitions">
			<beans:list>
				<beans:value>/WEB-INF/views/tiles/tilesdef.xml</beans:value>
			</beans:list>
		</beans:property>
		<beans:property name="preparerFactoryClass" value="org.springframework.web.servlet.view.tiles3.SpringBeanPreparerFactory">
		</beans:property>
	</beans:bean>
	
	<beans:bean id="viewResolver" class="org.springframework.web.servlet.view.UrlBasedViewResolver">
			<beans:property name="viewClass" value="org.springframework.web.servlet.view.tiles3.TilesView"/>
	</beans:bean>
	
	<context:component-scan base-package="bit.data.mini, bit.data.*"/>
	
</beans:beans>
