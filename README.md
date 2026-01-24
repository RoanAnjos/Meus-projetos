# 🛡️ Linux Security: Onde um "w" a mais pode custar milhões

### 💡 O Impacto Real
Imagine que um funcionário, por erro de configuração, tenha acesso de escrita na **folha de pagamento** da empresa ou nos **prontuários médicos** de pacientes. Em Cibersegurança, não basta ter senha; é preciso ter **Autorização**. Este projeto demonstra como blindei um ambiente de pesquisa contra acessos indevidos e vazamento de dados críticos.

### 🚀 Desafio vs. Solução
Neste laboratório de segurança, atuei na proteção do diretório `/home/researcher2/projects`, onde identifiquei e corrigi falhas de permissão que expunham dados sensíveis.

* **Pente-fino em Arquivos Ocultos:** Localizei o `.project_x.txt` e removi permissões de escrita para evitar sabotagem.
* **Isolamento de Diretórios:** Restringi a pasta `drafts` para que **apenas** o dono possa interagir com ela.
* **Princípio do Privilégio Mínimo:** Revoguei acessos globais de escrita em arquivos de projeto.

#### 📸 Evidência Técnica (Terminal Auditado)
![Print do Terminal](terminal.png)

---

### 🛠️ Hard Skills Aplicadas
* **Auditoria:** `ls -la` e `ls -ld` para análise de metadados e bits de permissão.
* **Hardening:** Uso avançado de `chmod` (ex: `u-w,g-w,g+r`) para controle granular.
* **Compliance:** Garantia de que a autorização do sistema esteja alinhada com as políticas de segurança.
