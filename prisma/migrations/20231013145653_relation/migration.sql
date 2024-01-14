/*
  Warnings:

  - Added the required column `userId` to the `categories` table without a default value. This is not possible if the table is not empty.

*/
-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_categories" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "name" TEXT NOT NULL,
    "parentId" TEXT NOT NULL,
);
INSERT INTO "new_categories" ( "id", "name", "parentId") SELECT  "id", "name", "parentId" FROM "categories";
DROP TABLE "categories";
ALTER TABLE "new_categories" RENAME TO "categories";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
