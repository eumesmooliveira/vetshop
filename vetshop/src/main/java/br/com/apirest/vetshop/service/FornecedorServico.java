package br.com.apirest.vetshop.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;

import br.com.apirest.vetshop.model.Fornecedor;
import br.com.apirest.vetshop.repository.IFornecedorRepositorio;

public class FornecedorServico implements IBaseServicoJPA<Fornecedor>{

    @Autowired
    private IFornecedorRepositorio repositorio;

    public FornecedorServico(IFornecedorRepositorio repo){
        this.repositorio = repo;
    }

    @Override
    public List<Fornecedor> Browse() {
        return this.repositorio.findAll();
    }

    @Override
    public Optional<Fornecedor> Read(Long chave) {
        return this.repositorio.findById(chave);
    }

    @Override
    public Fornecedor Edit(Fornecedor obj) {
        Optional<Fornecedor> old = this.repositorio.findById(obj.getId());
        if (old.isPresent()){
            Fornecedor cp = old.get();
            cp.setNomeFantasia(obj.getNomeFantasia());
            cp.setRazaoSocial(obj.getRazaoSocial());
            cp.setCnpj(obj.getCnpj());
            cp.setEmail(obj.getEmail());
            cp.setTelefone(obj.getTelefone());            
            this.repositorio.save(cp);
            return cp;
        }
        else{
            return null;
        }
    }

    @Override
    public Fornecedor Add(Fornecedor obj) {
        return this.repositorio.save(obj);
    }

    @Override
    public Fornecedor Delete(Long chave) {
        Optional<Fornecedor> old = this.repositorio.findById(chave);
        if (old.isPresent()){
            this.repositorio.delete(old.get());
            return old.get();
        }
        else{
            return null;
        }
    }
    
}
