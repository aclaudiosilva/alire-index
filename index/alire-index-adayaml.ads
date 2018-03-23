with Alire.Index.AUnit;
with Alire.Index.DAK_Components;

package Alire.Index.AdaYaml is

   function Project is new Catalogued_Project (Projects.AdaYaml);

   Prj_Repo       : constant URL    := "https://github.com/yaml/AdaYaml.git";
   Prj_Author     : constant String := "Felix Krause";
   Prj_Website    : constant URL    := "https://ada.yaml.io/";

   V_0_3 : constant Release :=
             Project.Register
               (V ("0.3"),
                Git (Prj_Repo, "2017a7c2523499c03b8d7fe06546a5a8bae6476d"),

                Dependencies       =>
                  AUnit.Project >= AUnit.V_2017 and
                  DAK_Components.Components_Connections_V_4_27.Within_Major,

                Properties         =>
                  Project_File ("yaml.gpr") and
                  Project_File ("yaml-utils.gpr") and
                  Project_File ("yaml-annotation_processor.gpr") and
                  Project_File ("yaml-server.gpr") and

                  GPR_Scenario ("Mode", "debug" or "release") and

                  Author     (Prj_Author) and
                  Website    (Prj_Website) and
                  License    (MIT),

                Private_Properties =>
                  Project_File ("yaml-tests.gpr") and

                  Executable ("yaml-lexer-harness") and
                  Executable ("yaml-parser-harness")
               );

   V_0_2 : constant Release :=
               Project.Register
                 (V ("0.2"),
                  Git (Prj_Repo, "0264b03fd92eeedfe3e2713ed1da3f0d255c1727"),

                  Dependencies =>
                    AUnit.Project >= AUnit.V_2017,

                  Properties         =>
                    Project_File ("yaml.gpr") and
                    Project_File ("yaml-utils.gpr") and

                    GPR_Scenario ("Mode", "debug" or "release") and

                    Author     (Prj_Author) and
                    Website    (Prj_Website) and
                    License    (MIT),

                  Private_Properties =>
                    Project_File ("yaml-tests.gpr") and

                    Executable ("yaml-lexer-harness") and
                    Executable ("yaml-parser-harness")
                 );

end Alire.Index.AdaYaml;