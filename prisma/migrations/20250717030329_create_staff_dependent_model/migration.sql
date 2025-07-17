/*
  Warnings:

  - You are about to drop the `pre_requisite` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `stud_mod_performance` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE "pre_requisite";

-- DropTable
DROP TABLE "stud_mod_performance";

-- CreateTable
CREATE TABLE "preRequisite" (
    "mod_code" VARCHAR(10) NOT NULL,
    "requisite" VARCHAR(10) NOT NULL,

    CONSTRAINT "preRequisite_pkey" PRIMARY KEY ("mod_code","requisite")
);

-- CreateTable
CREATE TABLE "studModPerformance" (
    "adm_no" CHAR(4) NOT NULL,
    "mod_registered" VARCHAR(10) NOT NULL,
    "mark" INTEGER NOT NULL,
    "grade" CHAR(2) NOT NULL,

    CONSTRAINT "studModPerformance_pkey" PRIMARY KEY ("adm_no","mod_registered")
);

-- AddForeignKey
ALTER TABLE "staff_dependent" ADD CONSTRAINT "staff_dependent_staff_no_fk" FOREIGN KEY ("staff_no") REFERENCES "staff"("staff_no") ON DELETE NO ACTION ON UPDATE NO ACTION;
