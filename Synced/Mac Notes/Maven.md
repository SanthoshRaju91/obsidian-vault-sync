      

Maven

Postman

Chrome Browser

Docker Desktop

MySQL on Docker or local installation

  

  

Maven: Tool

  

-   Dependency Management
-   Setting up build options

  

[https://mvnrepository.com/](https://mvnrepository.com/)

  

public interface ProductDao extends JPARepository<Product, Integer> {

public List<Product> findByCategory(String category);

public List<Product> findByCategoryAndPrice(String category, double price);

  

// JPQL uses class and fields instead of table and columns

// @Query(“select p from Product p where p.price between :p1 and :p2)

public List<Product> getBetweenRang(@QueryParam(“p1”) double d1, @QueryParam(“p2”) double d2);

} 

  

  

public List<Product> findByCategory(String category);

generates:

select * from products where category = ?

  

public List<Product> findByCategoryAndPrice(String category, double price);

generates:

select * from products where category = ? and price = ?

  

  

@Query(“select o from Order o left outer join o.customer = :cust”)

public List<Object[]> sampleJoin(@QueryParam(“cust”) int custid);

  

  

Health Indicators for Spring boot application

  

Spring Acutator for health check [textual info[

It also allows 3rd tools to scrape your data and generate graphs [ Prometheus, Grafana ]

  

=================================================================

 HATEOAS

  

Hypermedia As The Extension of Application State

  

  

POX -> Plain Old XML

<get-product>

<id>1</id>

</get-product>

  

URI - Universal Re Indicator

/addProduct.do, it was all verb based

  

REST

URI + Verbs

/api/products

  

HATEOS - level 3 of restful web services

  

Every data served should be a hypermedia, not just the links

  

Before HATEOS:

Product info:

{

“id”: 1,

“name”: “test”,

“price”: 344.44

}

  

HATEOS provides more hypermedia

Product info:

{

“id”: 1,

“name”: “test”,

“price”: 344.4,

“_links”: {

“self”: “[http://localhost:8080/api/produc/1](http://localhost:8080/api/produc/1)”,

“addToCart”: “http://localhost:8080/api/cart”,

“description”: “[http://localhost:8080/api/product/details/1](http://localhost:8080/api/product/details/1)”

}

}

  

  

For Hateos:

every model/entity/domain class should be wrapped into EntityModel[Model + Links]

  

Product ==> Model

  

EntityModel<Product> prod ==> this is model + links

  

List<Product> becomes CollectionModel<List<Product>>

  

RepresentationModel is base class for EntityModel and CollectionModel

  

By default HATEOS uses HAL ==> Hypermedia as language

  

HAL Limitation is it provides only links and not verbs

  

HAL_FORM adds more details to links [verb]

  

==========================================================

  

Spring security

  

3 keys areas of security

  

-   Authentication

-   Authentication functionality identifies a user and thus prevents unauthorised access. 

-   Authroization

-   Authorization functionality controls the access to system resources according to the authority of the authenticated (logged-in) user.

-   Exception Handling

  

Delegating Filter proxy

  

Spring provides a Filter implementation named DelegatingFilterProxy that allows bridging between the Servlet container’s lifecycle and Spring’s Application context

  

SecurityFilterChain is used by FilterChainProxy to determine which Spring Security Filter should be invoked for this request.

  

SecurityContextHolder

  

-   The SecurityContextHolder is where Spring Security stores the details of who is authenticated

  

1.  Create an empty SecurityContext
2.  Create a new Authentication object. Spring security does not care what type of Authentication Implementation is set on the SecurityContext.
3.  Finally we set the SecurityContext on the SecurityContext. 

  

SpringSecurity will use this information for authorisation

  

Holder will have every user security context.

  

Authentication

  

The authentication serves two main purposes within Spring Security:

  

-   An input to AuthenticationManager to provide the credentials a user has provided to authenticate.
-   Represents the currently authenticated user. The current Authentication can be obtained from the SecurityContext.

  

Authentication happens once.

Authorisation happens for every requests.

  

Authentication Filter

  

-   Spring Security’s web infrastructure is based entirely on standard servlet filter
-   It deals in HttpServletRequests and HttpServletResponses and doesn’t care whether the requests 

  

Authentication Manager

  

-   Authentication Manager is the API that defines how Spring Security’s Filters perform authentication
-   ProviderManager is the most commonly used implmentation of AuthenticationManager
-   ProviderManager delegates to a List of AuthenticationProviders.

  

Once you add spring-security related dependencies, out of the box it has added login / logout pages and make every resource a protected resource.

It also created a default user with password.

  

  

Spring Method Security

  

-   we need to enable global Method Security

-   @EnableGlobalMethodSecurity
-   prePostEnable=true,
-   securedEnabled=true,
-   Jsr250Enabled=true)

-   The prePostEnabled property enables Spring Security pre/post annotations.
-   The secureEnabled

  

  

======================================

  

[https://www.tutorialspoint.com/apache_bench/apache_bench_overview.htm](https://www.tutorialspoint.com/apache_bench/apache_bench_overview.htm)

  

  

How Spring boot helps in building micro services

  

-   Spring boot provides additional apis ==> Netflix OSS for building micro service based application

  

Spring cloud API ==> Netflix provided OSS API

  

1.  Discoverable - Make the services discoverable  
     Build spring boot app with EurekaServer dependency