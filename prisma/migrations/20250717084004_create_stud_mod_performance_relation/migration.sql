-- AddForeignKey
ALTER TABLE "studModPerformance" ADD CONSTRAINT "student_adm_no_fk" FOREIGN KEY ("adm_no") REFERENCES "student"("adm_no") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "studModPerformance" ADD CONSTRAINT "module_mod_code_fk" FOREIGN KEY ("mod_registered") REFERENCES "module"("mod_code") ON DELETE NO ACTION ON UPDATE NO ACTION;
