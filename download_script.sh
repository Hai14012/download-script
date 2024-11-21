echo -n "Nhập số lần nhân bản (1-10): " && read clone_count && \
for url in \
"https://www.mediafire.com/file/4a178ekxwt4beni/bin-mt-plus-23122788-66776205-eb43f1e92515e854d870bfc34c8bdf65.apk/file" \
"https://www.mediafire.com/file/hjkzhc03h5mdxqe/com-mod-floating-apps-apk-mod-4-14-premium-141402012.apk/file" \
"https://www.mediafire.com/file/x7mqhkisfg9dq3b/com.termux.boot_1000.apk/file" \
"https://www.mediafire.com/file/zhbbmp8hdi2d9c1/com.termux_1020.apk/file" \
"https://www.mediafire.com/file/vrzs9upq3z4sycw/control-screen-orientation-3-0-4.apk/file" \
"https://www.mediafire.com/file/7uga6h3r2xdmoxy/Cryptic-1.0.650.742.apk/file"
do
    # Lấy tên tệp gốc
    apk_name=$(basename "$url")
    
    # Kiểm tra URL cần clone
    if [ "$url" = "https://www.mediafire.com/file/7uga6h3r2xdmoxy/Cryptic-1.0.650.742.apk/file" ]; then
        for i in $(seq 1 "$clone_count"); do
            clone_name="${apk_name%.apk}_clone_$i.apk"
            echo "Đang tải clone: $clone_name"
            wget -q --content-disposition -O "$clone_name" "$url"
        done
    else
        echo "Đang tải: $apk_name"
        wget -q --content-disposition -O "$apk_name" "$url"
    fi
done

echo "Hoàn tất tải tất cả các tệp và clone theo yêu cầu."
