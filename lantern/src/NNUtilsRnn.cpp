#include <iostream>

#define LANTERN_BUILD

#include "lantern/lantern.h"

#include <torch/torch.h>

#include "utils.hpp"

void *_lantern_nn_utils_rnn_pack_padded_sequence(void *input, void *lengths, bool batch_first, bool enforce_sorted)
{
    LANTERN_FUNCTION_START
    auto out = torch::nn::utils::rnn::pack_padded_sequence(
        reinterpret_cast<LanternObject<torch::Tensor> *>(input)->get(),
        reinterpret_cast<LanternObject<torch::Tensor> *>(lengths)->get(),
        batch_first,
        enforce_sorted);

    return (void *)new LanternPtr<torch::nn::utils::rnn::PackedSequence>(out);
    LANTERN_FUNCTION_END
}

void *_lantern_nn_utils_rnn_pack_sequence(void *sequence, bool enforce_sorted)
{
    LANTERN_FUNCTION_START
    auto out = torch::nn::utils::rnn::pack_sequence(
        reinterpret_cast<LanternObject<std::vector<torch::Tensor>> *>(sequence)->get(),
        enforce_sorted);

    return (void *)new LanternPtr<torch::nn::utils::rnn::PackedSequence>(out);
    LANTERN_FUNCTION_END
}

void *_lantern_nn_utils_rnn_pad_packed_sequence(void *sequence, bool batch_first,
                                               double padding_value, void *total_length)
{
    LANTERN_FUNCTION_START
    auto out = torch::nn::utils::rnn::pad_packed_sequence(
        reinterpret_cast<LanternPtr<torch::nn::utils::rnn::PackedSequence> *>(sequence)->get(),
        batch_first, padding_value,
        reinterpret_cast<LanternObject<c10::optional<int64_t>> *>(total_length)->get());

    std::vector<torch::Tensor> x;
    x.push_back(std::get<0>(out));
    x.push_back(std::get<1>(out));

    return (void *)new LanternObject<std::vector<torch::Tensor>>(x);
    LANTERN_FUNCTION_END
}

void *_lantern_nn_utils_rnn_pad_sequence(void *sequence, bool batch_first, double padding_value)
{
    LANTERN_FUNCTION_START
    auto out = torch::nn::utils::rnn::pad_sequence(
        reinterpret_cast<LanternObject<std::vector<torch::Tensor>> *>(sequence)->get(),
        batch_first,
        padding_value);

    return (void *)new LanternObject<torch::Tensor>(out);
    LANTERN_FUNCTION_END
}

void *_lantern_nn_utils_rnn_PackedSequence_new(void *data, void *batch_sizes, void *sorted_indices, void *unsorted_indices)
{
    LANTERN_FUNCTION_START
    auto out = torch::nn::utils::rnn::PackedSequence(
        reinterpret_cast<LanternObject<torch::Tensor> *>(data)->get(),
        reinterpret_cast<LanternObject<torch::Tensor> *>(batch_sizes)->get(),
        reinterpret_cast<LanternObject<torch::Tensor> *>(sorted_indices)->get(),
        reinterpret_cast<LanternObject<torch::Tensor> *>(unsorted_indices)->get());
    return (void *)new LanternPtr<torch::nn::utils::rnn::PackedSequence>(out);
    LANTERN_FUNCTION_END
}

void *_lantern_nn_utils_PackedSequence_data(void *input)
{
    LANTERN_FUNCTION_START
    auto x = reinterpret_cast<LanternPtr<torch::nn::utils::rnn::PackedSequence> *>(input)->get();
    return (void *)new LanternObject<torch::Tensor>(x.data());
    LANTERN_FUNCTION_END
}

void *_lantern_nn_utils_PackedSequence_batch_sizes(void *input)
{
    LANTERN_FUNCTION_START
    auto x = reinterpret_cast<LanternPtr<torch::nn::utils::rnn::PackedSequence> *>(input)->get();
    return (void *)new LanternObject<torch::Tensor>(x.batch_sizes());
    LANTERN_FUNCTION_END
}

void *_lantern_nn_utils_PackedSequence_sorted_indices(void *input)
{
    LANTERN_FUNCTION_START
    auto x = reinterpret_cast<LanternPtr<torch::nn::utils::rnn::PackedSequence> *>(input)->get();
    return (void *)new LanternObject<torch::Tensor>(x.sorted_indices());
    LANTERN_FUNCTION_END
}

void *_lantern_nn_utils_PackedSequence_unsorted_indices(void *input)
{
    LANTERN_FUNCTION_START
    auto x = reinterpret_cast<LanternPtr<torch::nn::utils::rnn::PackedSequence> *>(input)->get();
    return (void *)new LanternObject<torch::Tensor>(x.unsorted_indices());
    LANTERN_FUNCTION_END
}