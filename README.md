A simplified project about categories and products

## Fast Startup

- Download Startup Template

```sh
    git clone https://github.com/AbduAllahGabbar/Fastify.git
    cd Fastify
    npm i
    npm run dev
```

## To Connect DB

- Open another terminal
- Run `npx prisma studio`
- manage your db from http://localhost:5555

## Request Parameters [GET , POST | PUT | Delete] Restful API From Postman

- Api for `Categories`

  Method [POST] : `URL` http://localhost:3100/categories

  ```json
  
  // If the category is the top parent, put zero | "0" in "parentId" : "0"
  // If the category has a parent, the parent's ID must be placed in the "parentId"

  //Sample Body 
  {
    "name": "Category 1",
    "parentId": "b0a7b2c7-e93d-4e99-88b2-740e9367233d"
  }
  ```

  Method [GET] : `URL` http://localhost:3100/categories

  ```html
  Minor categories related with the parent are returned in the
  "nestedCategories" list
  ```

  ```html
  Parent category are returned in the "parentCategory"
  ```

  ```html
  Returns the number of products related with the category in the { "_count":
  {"products": 0} }
  ```

- Api for `Products`

  Method [POST] : `URL` http://localhost:3100/products

  ```json
  // You must put the ID of the category you want to associate with the product in "categoryId"
 
  //Sample Body 
  {
   "name" : "Product",
   "categoryId" : "1cf07109-6531-42d8-8d32-2fc3515fd64d"
  }
  ```
  Method [GET] : `URL` http://localhost:3100/products

  ```html
  To get products list
  ```
