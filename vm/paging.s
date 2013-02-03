section .text

global enable_paging

enable_paging:

    push ebp
    mov ebp, esp

    push eax
    push ebx

    mov ebx, 1
    sal ebx, 31

    mov eax, cr0
    or eax, ebx
    mov cr0, eax

    mov eax, 0x00
    mov cr3, eax

    pop ebx
    pop eax

    leave
    ret
