/*
  Warnings:

  - You are about to drop the column `usernamee` on the `deliveryman` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[username]` on the table `deliveryman` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `username` to the `deliveryman` table without a default value. This is not possible if the table is not empty.

*/
-- DropIndex
DROP INDEX "deliveryman_usernamee_key";

-- AlterTable
ALTER TABLE "deliveryman" DROP COLUMN "usernamee",
ADD COLUMN     "username" TEXT NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX "deliveryman_username_key" ON "deliveryman"("username");
