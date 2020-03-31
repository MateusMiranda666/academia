/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Aluno;

/**
 *
 * @author Mateus
 */
public class AlunoDAO {

    static Connection c;

    public static void insereAluno(Aluno aluno) {
        c = ConnectionFactory.getConnection();

        String sql = "INSERT INTO aluno(nome,dataNascimento,cep,endereco,email,sexo,telefone,atividade) "
                + "VALUES (?,?,?,?,?,?,?,?);";
        try {
            PreparedStatement ppstt = c.prepareStatement(sql);
            ppstt.setString(1, aluno.getNome());
            ppstt.setString(2, aluno.getDataNascimento());
            ppstt.setString(3, aluno.getCep());
            ppstt.setString(4, aluno.getEndereco());
            ppstt.setString(5, aluno.getEmail());
            ppstt.setString(6, aluno.getSexo());
            ppstt.setString(7, aluno.getTelefone());
            ppstt.setString(8, aluno.getAtividade());
            ppstt.execute();
            ppstt.close();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }

    private static void fecharConexao() {
        try {
            c.close();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }
}
