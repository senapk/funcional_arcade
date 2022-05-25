#include <iostream>
#include <fstream>
#include <vector>
#include <algorithm>
#include <list>
#include <optional>
#include <numeric>
#include <functional>
#include <sstream>

const char EMPTY = '.';


struct Problem {
    std::string data;
    int lim;
    std::vector<int> holes;

    Problem(std::string data, int lim) {
        this->data = data;
        this->lim = lim;
        for (int i = 0; i < (int) data.size(); i++)
            if (data[i] == EMPTY)
                this->holes.push_back(i);
    }

    bool fit(int index, char value) {
        int inicio = std::max(index - lim    , 0);
        int final  = std::min(index + lim + 1,  (int) data.size());
        return std::find(data.begin() + inicio, data.begin() + final, value) == data.end();
    }

    bool solve(int hindex) {
        if (hindex == (int) holes.size()) //se cheguei no fim, então preenchi tudo
            return true; //deu certo

        auto index = holes[hindex];
        for (char value = '0'; value <=  '0' + lim; value++) {
            if (this->fit(index, value)) { //consigo colocar esse valor nesse indice
                this->data[index] = value; //coloco o valor
                if (this->solve(hindex + 1)) //tento ir pro proximo
                    return true; //se algum proximo resolveu o problema, então deu certo
            }
        }
        return false; //deu ruim
    }
};



int main() {
    std::string data;
    int lim { };
    std::cin >> data >> lim;
    Problem prob(data, lim);
    prob.solve(0);
    std::cout << prob.data << '\n';
}