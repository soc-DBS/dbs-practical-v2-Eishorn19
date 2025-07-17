/*
  Warnings:

  - The primary key for the `module` table will be changed. If it partially fails, the table could be left without primary key constraint.

*/
-- DropForeignKey
ALTER TABLE "course" DROP CONSTRAINT "course_offered_by_fkey";

-- AlterTable
ALTER TABLE "module" DROP CONSTRAINT "module_pkey",
ALTER COLUMN "mod_code" SET DATA TYPE TEXT,
ADD CONSTRAINT "module_pkey" PRIMARY KEY ("mod_code");

-- AddForeignKey
ALTER TABLE "course" ADD CONSTRAINT "fk_course_offered_by" FOREIGN KEY ("offered_by") REFERENCES "department"("dept_code") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "preRequisite" ADD CONSTRAINT "pre_requisite_mod_code_fk" FOREIGN KEY ("mod_code") REFERENCES "module"("mod_code") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "preRequisite" ADD CONSTRAINT "pre_requisite_requisite_fk" FOREIGN KEY ("requisite") REFERENCES "module"("mod_code") ON DELETE NO ACTION ON UPDATE NO ACTION;
