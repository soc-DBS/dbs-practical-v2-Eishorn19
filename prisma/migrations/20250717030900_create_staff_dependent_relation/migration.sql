/*
  Warnings:

  - You are about to drop the `staff_backup` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `staff_dependent` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "staff_dependent" DROP CONSTRAINT "staff_dependent_staff_no_fk";

-- DropTable
DROP TABLE "staff_backup";

-- DropTable
DROP TABLE "staff_dependent";

-- CreateTable
CREATE TABLE "staffBackup" (
    "staff_no" CHAR(4) NOT NULL,
    "staff_name" VARCHAR(100) NOT NULL,
    "supervisor" CHAR(4),
    "dob" DATE NOT NULL,
    "grade" VARCHAR(5) NOT NULL,
    "marital_status" VARCHAR(1) NOT NULL,
    "pay" DECIMAL(7,2),
    "allowance" DECIMAL(7,2),
    "hourly_rate" DECIMAL(7,2),
    "gender" CHAR(1) NOT NULL,
    "citizenship" VARCHAR(10) NOT NULL,
    "join_yr" INTEGER NOT NULL,
    "dept_code" VARCHAR(5) NOT NULL,
    "type_of_employment" VARCHAR(2) NOT NULL,
    "highest_qln" VARCHAR(10) NOT NULL,
    "designation" VARCHAR(20) NOT NULL,

    CONSTRAINT "staff_backup_pkey" PRIMARY KEY ("staff_no")
);

-- CreateTable
CREATE TABLE "staffDependent" (
    "staff_no" CHAR(4) NOT NULL,
    "dependent_name" VARCHAR(30) NOT NULL,
    "relationship" VARCHAR(20) NOT NULL,

    CONSTRAINT "staff_dependent_pkey" PRIMARY KEY ("staff_no","dependent_name")
);

-- AddForeignKey
ALTER TABLE "staffDependent" ADD CONSTRAINT "staff_dependent_staff_no_fk" FOREIGN KEY ("staff_no") REFERENCES "staff"("staff_no") ON DELETE NO ACTION ON UPDATE NO ACTION;
