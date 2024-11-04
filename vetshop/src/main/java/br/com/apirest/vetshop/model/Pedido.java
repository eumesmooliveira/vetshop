package br.com.apirest.vetshop.model;

import java.time.LocalDate;
import java.util.Set;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToMany;
import jakarta.persistence.OneToOne;

@Entity
public class Pedido {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    private String nome;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "cliente_id")
    private Cliente cliente;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "fornecedor_id")
    private Fornecedor fornecedor;

    @OneToMany(mappedBy = "pedido", cascade = CascadeType.ALL, orphanRemoval = true)
    private Set<ItemPedido> itemPedidos;

    private LocalDate dataDeInclusao;

    private LocalDate dataDeAlteracao;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public Cliente getCliente() {
        return cliente;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }

    public Fornecedor getFornecedor() {
        return fornecedor;
    }

    public void setFornecedor(Fornecedor fornecedor) {
        this.fornecedor = fornecedor;
    }

    public Set<ItemPedido> getItemPedidos() {
        return itemPedidos;
    }

    public void setItemPedidos(Set<ItemPedido> itemPedidos) {
        this.itemPedidos = itemPedidos;
    }

    public LocalDate getDataDeInclusao() {
        return dataDeInclusao;
    }

    public void setDataDeInclusao(LocalDate dataDeInclusao) {
        this.dataDeInclusao = dataDeInclusao;
    }

    public LocalDate getDataDeAlteracao() {
        return dataDeAlteracao;
    }

    public void setDataDeAlteracao(LocalDate dataDeAlteracao) {
        this.dataDeAlteracao = dataDeAlteracao;
    }

    public Pedido() {
    }

    public Pedido(Long id, String nome, Cliente cliente, Fornecedor fornecedor, Set<ItemPedido> itemPedidos,
            LocalDate dataDeInclusao, LocalDate dataDeAlteracao) {
        this.id = id;
        this.nome = nome;
        this.cliente = cliente;
        this.fornecedor = fornecedor;
        this.itemPedidos = itemPedidos;
        this.dataDeInclusao = dataDeInclusao;
        this.dataDeAlteracao = dataDeAlteracao;
    }    
}
