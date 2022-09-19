Given 'user berada di homepage "Pelanggan-07"' do 
    waitFor {@app.transaksi.text_produkN1}
    expect(@app.transaksi.text_produkN1.displayed?).to be true

end

And 'user ganti operator ke kasir atau staff yang tidak memiliki akses pelanggan "Pelanggan-07"' do
    @app.transaksi.btn_drawer.click
    @app.drawer.btn_operator.click
    @app.pelanggan.btn_operator_EkoGreen.click
    # Loop btn 1
    $i = 0
    $num = 4
    while $i < $num  do
      @app.afterloginpage.text_btn_1.click
        $i +=1
    end
    sleep(3)
    expect(@app.afterloginpage.img_produk.displayed?).to be true

end

When 'user ke menu pelanggan "Pelanggan-07"' do
    @app.pelanggan.btn_pelanggan.click

end

Then 'tidak ada button tambah pelanggan "Pelanggan-07"' do
    #cek element is not present
    begin
        if @app.pelanggan.btn_tambahpelanggan.displayed?
            p 'Scenario Gagal'
        end
    rescue
        p 'Scenario Berhasil'

    end
    @app.pelanggan.btn_back.click

end
