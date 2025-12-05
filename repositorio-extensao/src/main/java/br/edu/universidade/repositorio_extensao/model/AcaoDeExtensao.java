package br.edu.universidade.repositorio_extensao.model;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

public class AcaoDeExtensao {
    private int id;
    private String titulo;
    private String status;
    private String descricaoCurta;
    private String descricao;
    private LocalDate dataInicio;
    private LocalDate dataFim;
    private String local;
    private Responsavel responsavel;
    private boolean temTaxas;
    private String linkExterno;

    public AcaoDeExtensao(
            int id,
            String titulo,
            String status,
            String descricaoCurta,
            String descricao,
            LocalDate dataInicio,
            LocalDate dataFim,
            String local,
            Responsavel responsavel,
            boolean temTaxas,
            String linkExterno
    ) {
        this.id = id;
        this.titulo = titulo;
        this.status = status;
        this.descricaoCurta = descricaoCurta;
        this.descricao = descricao;
        this.dataInicio = dataInicio;
        this.dataFim = dataFim;
        this.local = local;
        this.responsavel = responsavel;
        this.temTaxas = temTaxas;
        this.linkExterno = linkExterno;
    }

    // Getters
    public int getId() { return id; }
    public String getTitulo() { return titulo; }
    public String getStatus() { return status; }
    public String getDescricaoCurta() { return descricaoCurta; }
    public String getDescricao() { return descricao; }
    public LocalDate getDataInicio() { return dataInicio; }
    public LocalDate getDataFim() { return dataFim; }
    public String getLocal() { return local; }
    public Responsavel getResponsavel() { return responsavel; }
    public boolean isTemTaxas() { return temTaxas; }
    public String getLinkExterno() { return linkExterno; }

    // Datas formatadas para a JSP
    public String getDataInicioFormatada() {
        return dataInicio.format(DateTimeFormatter.ofPattern("dd/MM/yyyy"));
    }

    public String getDataFimFormatada() {
        return dataFim.format(DateTimeFormatter.ofPattern("dd/MM/yyyy"));
    }

    // Setters
    public void setId(int id) { this.id = id; }
    public void setTitulo(String titulo) { this.titulo = titulo; }
    public void setStatus(String status) { this.status = status; }
    public void setDescricaoCurta(String descricaoCurta) { this.descricaoCurta = descricaoCurta; }
    public void setDescricao(String descricao) { this.descricao = descricao; }
    public void setDataInicio(LocalDate dataInicio) { this.dataInicio = dataInicio; }
    public void setDataFim(LocalDate dataFim) { this.dataFim = dataFim; }
    public void setLocal(String local) { this.local = local; }
    public void setResponsavel(Responsavel responsavel) { this.responsavel = responsavel; }
    public void setTemTaxas(boolean temTaxas) { this.temTaxas = temTaxas; }
    public void setLinkExterno(String linkExterno) { this.linkExterno = linkExterno; }
}
