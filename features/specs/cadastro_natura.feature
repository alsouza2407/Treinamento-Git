#language: pt

Funcionalidade: Criar uma conta na rede natura
Eu como cliente natura, gostaria criar uma conta.

Cenario: Criar conta na rede natura com sucesso.

Dado que eu esteja no site da natura para criar uma conta
Quando preencho todos os campos do formulario e clico no botão Continuar
| E-mail           | teste00774899@gmail.com | 
| CEP              | 06555-555               |
| Nome             | Ana Lucia               |
| Senha            | 123456789               |

Então eu vejo a próxima tela home                                                                                     


