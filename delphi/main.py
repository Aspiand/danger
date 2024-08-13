# procedure ..................
# const gaji:Array [0..2, 0..3] of Real = (
    # ( 750000, 1000000, 1250000, 1500000),
    # (1000000, 1250000, 1500000, 1750000),
    # (1250000, 1500000, 1750000, 2000000)
# )
# var
#     total_gaji, tunjangan_istri, tunjangan_anak:real;

departemen = [
    "Administrasi",
    "Keuangan",
    "Marketing"
]

golongan = [
    "I", "II", "III", "IV"
]

gaji = [
    [ 750000, 1000000, 1250000, 1500000],
    [1000000, 1250000, 1500000, 1750000],
    [1250000, 1500000, 1750000, 2000000]
]

total_gaji = tunjangan_istri = tunjangan_anak = 0

gender = "pria" # radio > group[pria, wanita]. ## pria.Checked
menikah = True # checkbox. ## menikah.Checked
jumlah_anak = 1 # spin_edit MaxValue 2. ## anak.value


# gaji_pokok = gaji[departemen][golongan]
# Departemen keuangan, Golongan I
gaji_pokok = gaji[1][0]
##
# gaji_pokok = gaji[departemen.ItemIndex][golongan.ItemIndex]


if menikah and gender == "pria":
    tunjangan_istri = gaji_pokok * 10/100
    tunjangan_anak = anak.value * 5/100 # jika 5% tiap anak

##
# if menikah.Checked and pria.Checked then
# begin
# end


total_gaji = gaji_pokok + tunjangan_anak + tunjangan_istri

print(gaji_pokok, tunjangan_istri, tunjangan_anak)