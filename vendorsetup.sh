# ROM source patches

color="\033[0;32m"
end="\033[0m"

echo -e "${color}Applying patches${end}"
sleep 1

# Remove pixel headers to avoid conflicts
rm -rf hardware/google/pixel/kernel_headers/Android.bp

# Remove hardware/lineage/compat to avoid conflicts
rm -rf hardware/lineage/compat/Android.bp

# Rename conflicting qti_kernel_headers in source
sed -i 's/"qti_kernel_headers"/"qti_kernel_headers_old"/g' vendor/aosp/build/soong/Android.bp