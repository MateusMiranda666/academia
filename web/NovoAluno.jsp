<%-- 
    Document   : NovoAluno
    Created on : 22/03/2020, 19:40:29
    Author     : Mateus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="pt-br">

<head>
    <title>Academia</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">



    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <script type="text/javascript" src="jquery.mask.min.js"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            $("#dataNascimento").mask("99/99/9999");

        });

        $(document).ready(function () {
            $("#cep").mask("99.999-999");
        });

        $(document).ready(function () {
            $("#telefone").mask("(00) 0000-00000");

        });


    </script>



    <script type="text/javascript">

        function validaForm(frmAcad) {

            if (frmAcad.nome.value == "" || frmAcad.nome.value == null || frmAcad.nome.value.length < 3) {
                alert("Por favor preencha corretamente o campo nome");
                frmAcad.nome.focus();
                return false;
            }



            if (frmAcad.cep.value == "" || frmAcad.cep.value == null || frmAcad.cep.value.length !=10) {
                alert("Por favor preencha corretamente o campo cep");
                frmAcad.cep.focus();
                return false;
            }






            if (frmAcad.dataNascimento.value == "" || frmAcad.dataNascimento.value == null || frmAcad.dataNascimento.value.length !=10) {
                alert("Ops, você preencheu sua data de nascimento incorretamente");
                frmAcad.dataNascimento.focus();
                return false;
            }



            if (frmAcad.endereco.value == "" || frmAcad.endereco.value == null || frmAcad.endereco.value.length < 3) {
                alert("Por favor preencha corretamente o campo endereço");
                frmAcad.endereco.focus();
                return false;
            }


            if (frmAcad.email.value.indexOf("@") == -1 ||
                frmAcad.email.value.indexOf(".") == -1 ||
                frmAcad.email.value == "" ||
                frmAcad.email.value == null) {
                alert("Por insira um e-mail válido");
                frmAcad.email.focus();
                return false;
            }

            validaSexo = -1;
            for (x = frmAcad.sexo.length - 1; x > -1; x--)
                if (frmAcad.sexo[x].checked) {

                    validaSexo = x;

                }

            if (validaSexo == -1) {
                alert("Por favor o campo sexo não pode ficar em branco");
                frmAcad.sexo[0].focus();
                return false;
            }

            if (frmAcad.telefone.value == "" || frmAcad.telefone.value == null || frmAcad.telefone.value.length !=15) {
                alert("Por favor preencha corretamente o campo telefone com seu DDD, também verifique se não tem números a menos ou a mais");
                frmAcad.telefone.focus();
                return false;
            }

            if (frmAcad.atividade.value == "") {
                alert("Ops, você esqueceu de selecionar a atividade.");
                frmAcad.atividade.focus();
                return false;
            }

        }

    </script>


</head>

<body>


    <div class="container">

        <div class="row">

            <div class="col-sm-6">

                <form action="CadastraAluno" name="frmAcad" method="post" onsubmit="return validaForm(this);">

                    <div>
                        <h1 class="p-3 mb-2 bg-dark text-white">BORAAA, HORA DO SHOW!</h1>
                    </div>

                    <div class="form-group">
                        <label for="nome">Nome</label>
                        <input type="text" class="form-control" name="nNome" id="nome">
                    </div>

                    <div class="form-group">
                        <label for="dataNascimento">Data de Nascimento</label>
                        <input type="text" class="form-control" name="nDataNascimento" id="dataNascimento">
                    </div>

                    <div class="form-group">
                        <label for="cep">CEP</label>
                        <input type="text" class="form-control" name="nCep" id="cep">
                    </div>

                    <div class="form-group">
                        <label for="endereco">Endereço</label>
                        <input type="text" class="form-control" name="nEndereco" id="endereco">
                    </div>

                    <div class="form-group">
                        <label for="email">E-mail</label>
                        <input type="email" class="form-control" name="nEmail" id="email">
                    </div>

                    <div class="radio">
                        <label>Sexo</label>
                        <br>
                        <label>
                            <input type="radio" name="sexo" value="M" id="masc"> Masculino
                        </label>


                        <label>
                            <input type="radio" name="sexo" value="F" id="fem"> Feminino
                        </label>

                    </div>

                    <br>

                    <div class="form-group">
                        <label for="telefone">Telefone</label>
                        <input type="text" class="form-control" name="nTelefone" id="telefone">
                    </div>

                    <p>Atividade
                        <select name="atividade" class="form-control" id="ativ">
                            <option value="">Selecione a Atividade</option>
                            <option value="musculacao">Musculação</option>
                            <option value="pilates">Pilates</option>
                            <option value="crossfit">Crossfit</option>
                        </select>


                        <button type="submit" class="btn btn-outline-primary my-4">Finalizar</button>

                </form>

            </div>

        </div>

    </div>


    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
</body>

</html>
